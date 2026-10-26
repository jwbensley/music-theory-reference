from collections import defaultdict
import os
from pathlib import Path
from unittest.mock import MagicMock

import pytest

from app.audio import Audio
from app.narration import Narration
from app.sounds import (
    Chord,
    Chords,
    Interval,
    Intervals,
    Key,
    Keys,
    Phrase,
    Phrases,
    Scale,
    Scales,
    SoundType,
    SoundTypes,
)

NARRATED: list[Chord | Interval | Key | Phrase | Scale | SoundType] = (
    [s.value for s in SoundTypes]
    + [c.value for c in Chords]
    + [i.value for i in Intervals]
    + [s.value for s in Scales]
    + [k.value for k in Keys]
    + [p.value for p in Phrases]
)


@pytest.mark.parametrize(
    "obj, expected",
    [
        (SoundTypes.scales.value, "narration/scales.wav"),
        (Chords.major_seventh.value, "narration/major_seventh.wav"),
        (Keys.c_sharp.value, "narration/c_sharp.wav"),
        (Phrases.in_the_key_of.value, "narration/in_the_key_of.wav"),
    ],
)
def test_get_filename(
    obj: Chord | Interval | Key | Phrase | Scale | SoundType, expected: str
) -> None:
    assert Narration.get_filename(obj) == expected


def test_shared_filenames_have_the_same_pronunciation() -> None:
    """
    Narration files are named after the object they narrate, so objects with
    the same name (e.g. the major chord and the major scale) share a file.
    They must have the same pronunciation too, or one would be narrated wrong.
    """
    pronunciations: dict[str, set[str]] = defaultdict(set)
    for obj in NARRATED:
        pronunciations[Narration.get_filename(obj)].add(
            obj.get_pronunciation()
        )
    conflicts = {f: p for f, p in pronunciations.items() if len(p) > 1}
    assert conflicts == {}


@pytest.fixture
def gtts(monkeypatch: pytest.MonkeyPatch) -> MagicMock:
    """
    Replace gTTS so that no network requests are made, and replace the MP3 to
    WAV conversion so that ffmpeg isn't needed.
    """
    gtts = MagicMock()
    gtts.return_value.save.side_effect = lambda f: Path(f).write_bytes(b"mp3")
    monkeypatch.setattr("app.narration.gTTS", gtts)
    monkeypatch.setattr(
        Audio,
        "mp3_to_wav",
        lambda f: Path(f.replace(".mp3", ".wav")).write_bytes(b"wav"),
    )
    return gtts


def test_generate_audio(tmp_path: Path, gtts: MagicMock) -> None:
    Narration.generate_audio("Cee", "narration/c.wav", out_dir=str(tmp_path))
    gtts.assert_called_once_with(text="Cee", lang="en")
    # The intermediate MP3 file is removed
    assert os.listdir(tmp_path / "narration") == ["c.wav"]


def test_generate_audio_skips_existing_file(
    tmp_path: Path, gtts: MagicMock
) -> None:
    (tmp_path / "narration").mkdir()
    (tmp_path / "narration" / "c.wav").write_bytes(b"existing")
    Narration.generate_audio("Cee", "narration/c.wav", out_dir=str(tmp_path))
    gtts.assert_not_called()
    assert (tmp_path / "narration" / "c.wav").read_bytes() == b"existing"


def test_generate_audio_failure(tmp_path: Path, gtts: MagicMock) -> None:
    gtts.return_value.save.side_effect = ConnectionError("No network")
    with pytest.raises(ConnectionError):
        Narration.generate_audio(
            "Cee", "narration/c.wav", out_dir=str(tmp_path)
        )


def test_generate_all_narrations(monkeypatch: pytest.MonkeyPatch) -> None:
    generate_audio = MagicMock()
    monkeypatch.setattr(Narration, "generate_audio", generate_audio)

    Narration.generate_all_narrations(out_dir="out")

    assert {c.args for c in generate_audio.call_args_list} == {
        (obj.get_pronunciation(), Narration.get_filename(obj))
        for obj in NARRATED
    }
    assert all(
        c.kwargs == {"out_dir": "out"} for c in generate_audio.call_args_list
    )
