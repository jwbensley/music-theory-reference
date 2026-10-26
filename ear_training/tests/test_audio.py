import os
from pathlib import Path
import shutil

import pytest
from pydub import AudioSegment  # type: ignore
from pydub.generators import Sine  # type: ignore

from app.audio import Audio

requires_ffmpeg = pytest.mark.skipif(
    shutil.which("ffmpeg") is None or shutil.which("ffprobe") is None,
    reason="ffmpeg is required to encode and decode MP3 files",
)


def write_tone(filename: Path, duration_ms: int) -> None:
    tone = Sine(440).to_audio_segment(duration=duration_ms, volume=-10.0)  # type: ignore
    tone.export(filename, format="wav")  # type: ignore


def wav_length_ms(filename: Path) -> int:
    return len(AudioSegment.from_wav(filename))  # type: ignore


def test_get_filename() -> None:
    assert Audio.get_filename(500) == "silences/silence_500ms.wav"


def test_generate_silence(tmp_path: Path) -> None:
    output_file = tmp_path / "silence.wav"
    Audio.generate_silence(duration_ms=750, output_file=str(output_file))
    silence = AudioSegment.from_wav(output_file)  # type: ignore
    assert len(silence) == 750  # type: ignore
    assert silence.rms == 0  # type: ignore


def test_generate_silence_skips_existing_file(tmp_path: Path) -> None:
    output_file = tmp_path / "silence.wav"
    output_file.write_bytes(b"existing")
    Audio.generate_silence(duration_ms=750, output_file=str(output_file))
    assert output_file.read_bytes() == b"existing"


def test_generate_all_silences(tmp_path: Path) -> None:
    Audio.generate_all_silences(out_dir=str(tmp_path))
    durations = range(250, 3001, 250)
    assert len(os.listdir(tmp_path / Audio.get_sub_dir())) == len(durations)
    for duration_ms in durations:
        filename = tmp_path / Audio.get_filename(duration_ms)
        assert wav_length_ms(filename) == duration_ms


def test_normalise_wav(tmp_path: Path) -> None:
    filename = tmp_path / "tone.wav"
    write_tone(filename, 500)
    Audio.normalise_wav(str(filename), target_dBFS=-25.0)
    normalised = AudioSegment.from_wav(filename)  # type: ignore
    assert normalised.dBFS == pytest.approx(-25.0, abs=0.1)  # type: ignore


def test_trim_trailing_ms(tmp_path: Path) -> None:
    filename = tmp_path / "tone.wav"
    write_tone(filename, 1000)
    Audio.trim_trailing_ms(str(filename), duration_ms=250)
    assert wav_length_ms(filename) == 750


def test_trim_trailing_silence(tmp_path: Path) -> None:
    filename = tmp_path / "tone.wav"
    tone = Sine(440).to_audio_segment(duration=500, volume=-10.0)  # type: ignore
    silence = AudioSegment.silent(duration=1000)  # type: ignore
    (tone + silence).export(filename, format="wav")  # type: ignore
    Audio.trim_trailing_silence(str(filename))
    # The tone is kept, with a little padding
    assert 500 <= wav_length_ms(filename) <= 600


def test_splice_skips_existing_file(tmp_path: Path) -> None:
    output_file = tmp_path / "exercise.mp3"
    output_file.write_bytes(b"existing")
    Audio.splice(
        input_files=[str(tmp_path / "missing.wav")],
        output_file=str(output_file),
    )
    assert output_file.read_bytes() == b"existing"


@requires_ffmpeg
@pytest.mark.parametrize("overwrite", [False, True])
def test_splice(tmp_path: Path, overwrite: bool) -> None:
    tone = tmp_path / "tone.wav"
    silence = tmp_path / "silence.wav"
    write_tone(tone, 500)
    Audio.generate_silence(duration_ms=250, output_file=str(silence))
    output_file = tmp_path / "exercise.mp3"
    if overwrite:
        output_file.write_bytes(b"existing")

    Audio.splice(
        input_files=[str(tone), str(silence), str(tone)],
        output_file=str(output_file),
        overwrite=overwrite,
    )

    # MP3 encoding pads the audio slightly
    spliced = AudioSegment.from_mp3(output_file)  # type: ignore
    assert len(spliced) == pytest.approx(1250, abs=50)  # type: ignore


@requires_ffmpeg
def test_wav_to_mp3_to_wav(tmp_path: Path) -> None:
    wav_filename = tmp_path / "tone.wav"
    write_tone(wav_filename, 500)

    Audio.wav_to_mp3(str(wav_filename))
    wav_filename.unlink()
    Audio.mp3_to_wav(str(tmp_path / "tone.mp3"))

    # MP3 encoding pads the audio slightly
    assert wav_length_ms(wav_filename) == pytest.approx(500, abs=50)
