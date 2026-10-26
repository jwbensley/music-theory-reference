from __future__ import annotations
from dataclasses import dataclass
import os
from pathlib import Path

import pytest

from app.app import EarTraining
from app.audio import Audio


@dataclass
class SpliceCall:
    input_files: list[str]
    output_file: str
    overwrite: bool

    def relative_input_files(self) -> list[str]:
        """
        Return the input files relative to the audio directory, e.g. "midi/4_c_4.wav".
        """
        return [
            os.path.relpath(f, EarTraining.base_dir) for f in self.input_files
        ]


@pytest.fixture
def splice_calls(
    monkeypatch: pytest.MonkeyPatch, tmp_path: Path
) -> list[SpliceCall]:
    """
    Stop exercises from being rendered to MP3. Instead, record the arguments
    passed to Audio.splice() and write a placeholder output file.
    """
    monkeypatch.setattr(
        EarTraining, "rendered_dir", str(tmp_path / "rendered")
    )
    calls: list[SpliceCall] = []

    def fake_splice(
        input_files: list[str], output_file: str, overwrite: bool = False
    ) -> None:
        calls.append(SpliceCall(list(input_files), output_file, overwrite))
        Path(output_file).write_bytes(b"fake mp3")

    monkeypatch.setattr(Audio, "splice", fake_splice)
    return calls
