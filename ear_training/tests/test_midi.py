import os
from pathlib import Path
from typing import Any
from unittest.mock import MagicMock, call

import pytest

from app.audio import Audio
from app.midi import Midi
from app.sounds import Chords, Duration, Durations, Intervals, Keys, Octaves


@pytest.mark.parametrize(
    "kwargs, expected",
    [
        ({}, "midi/4_c_4.wav"),
        ({"duration": Durations.quatre.value}, "midi/4_c_0_25.wav"),
        ({"chord": Chords.major_seventh.value}, "midi/4_c_major_seventh.wav"),
        ({"interval": Intervals.perfect_fifth.value}, "midi/4_g_4.wav"),
        (
            {
                "duration": Durations.two.value,
                "interval": Intervals.octave.value,
            },
            "midi/5_c_2.wav",
        ),
    ],
)
def test_get_filename(kwargs: dict[str, Any], expected: str) -> None:
    filename = Midi.get_filename(
        octave=Octaves.four.value, key=Keys.c.value, **kwargs
    )
    assert filename == expected


def test_add_note() -> None:
    midi = MagicMock()
    Midi._add_note(
        midi, [60, 64, 67], time=0, track=0, duration=Durations.two.value
    )
    assert midi.addNote.call_args_list == [
        call(track=0, channel=0, pitch=p, time=0, duration=2, volume=127)
        for p in [60, 64, 67]
    ]


def test_write_midi(tmp_path: Path) -> None:
    midi = Midi._new_midi_file(tempo=200, track=0)
    Midi._add_note(midi, [69], time=0, track=0, duration=Durations.one.value)
    filename = tmp_path / "midi" / "4_a_1.mid"
    Midi._write_midi(midi, str(filename))
    assert filename.read_bytes().startswith(b"MThd")


@pytest.fixture
def fluidsynth(monkeypatch: pytest.MonkeyPatch) -> MagicMock:
    fluidsynth = MagicMock()
    monkeypatch.setattr("app.midi.FluidSynth", fluidsynth)
    return fluidsynth


def test_midi_to_wav(
    monkeypatch: pytest.MonkeyPatch, fluidsynth: MagicMock
) -> None:
    trim_trailing_ms = MagicMock()
    normalise_wav = MagicMock()
    monkeypatch.setattr(Audio, "trim_trailing_ms", trim_trailing_ms)
    monkeypatch.setattr(Audio, "normalise_wav", normalise_wav)

    Midi._midi_to_wav("out/midi/4_a_1.mid", Durations.one.value)

    fluidsynth.return_value.midi_to_audio.assert_called_once_with(
        midi_file="out/midi/4_a_1.mid", audio_file="out/midi/4_a_1.wav"
    )
    trim_trailing_ms.assert_called_once_with(
        "out/midi/4_a_1.wav", duration_ms=Durations.one.value.get_trim()
    )
    normalise_wav.assert_called_once_with(
        "out/midi/4_a_1.wav", target_dBFS=-25.0
    )


def test_midi_to_wav_without_duration(
    monkeypatch: pytest.MonkeyPatch, fluidsynth: MagicMock
) -> None:
    trim_trailing_ms = MagicMock()
    monkeypatch.setattr(Audio, "trim_trailing_ms", trim_trailing_ms)
    monkeypatch.setattr(Audio, "normalise_wav", MagicMock())

    Midi._midi_to_wav("out/midi/4_a_1.mid")

    trim_trailing_ms.assert_not_called()


def test_generate_midi_file(
    monkeypatch: pytest.MonkeyPatch, tmp_path: Path
) -> None:
    rendered: list[tuple[str, Duration | None]] = []

    def fake_midi_to_wav(filename: str, duration: Duration | None = None):
        assert Path(filename).read_bytes().startswith(b"MThd")
        rendered.append((filename, duration))

    monkeypatch.setattr(Midi, "_midi_to_wav", fake_midi_to_wav)

    Midi._generate_midi_file(
        [69],
        time=0,
        duration=Durations.one.value,
        filename="midi/4_a_1.wav",
        out_dir=str(tmp_path),
    )

    midi_filename = tmp_path / "midi" / "4_a_1.mid"
    assert rendered == [(str(midi_filename), Durations.one.value)]
    # The intermediate MIDI file is removed once rendered
    assert not midi_filename.exists()


def test_generate_midi_file_skips_existing_file(
    monkeypatch: pytest.MonkeyPatch, tmp_path: Path
) -> None:
    midi_to_wav = MagicMock()
    monkeypatch.setattr(Midi, "_midi_to_wav", midi_to_wav)
    (tmp_path / "midi").mkdir()
    (tmp_path / "midi" / "4_a_1.wav").write_bytes(b"existing")

    Midi._generate_midi_file(
        [69],
        time=0,
        duration=Durations.one.value,
        filename="midi/4_a_1.wav",
        out_dir=str(tmp_path),
    )

    midi_to_wav.assert_not_called()
    assert os.listdir(tmp_path / "midi") == ["4_a_1.wav"]


@pytest.fixture
def generated_sounds(monkeypatch: pytest.MonkeyPatch) -> dict[str, list[int]]:
    """
    Run Midi.generate_all_sounds() without rendering any audio.
    Return the MIDI notes of every sound, keyed by filename.
    """
    sounds: dict[str, list[int]] = {}

    def fake_generate_midi_file(
        notes: list[int],
        time: int,
        duration: Duration,
        filename: str,
        out_dir: str,
    ) -> None:
        assert filename not in sounds
        sounds[filename] = notes

    monkeypatch.setattr(Midi, "_generate_midi_file", fake_generate_midi_file)
    Midi.generate_all_sounds(out_dir="unused")
    return sounds


def test_generate_all_sounds_count(
    generated_sounds: dict[str, list[int]],
) -> None:
    assert len(generated_sounds) == (
        len(Octaves) * len(Keys) * (len(Durations) + len(Chords))
    )


def test_generate_all_sounds_notes(
    generated_sounds: dict[str, list[int]],
) -> None:
    # Concert A, 440 Hz
    assert generated_sounds["midi/4_a_1.wav"] == [69]

    for octave in Octaves:
        for key in Keys:
            note = octave.value.get_midi_start() + key.value.get_midi_offset()
            for duration in Durations:
                filename = Midi.get_filename(
                    octave=octave.value,
                    key=key.value,
                    duration=duration.value,
                )
                assert generated_sounds[filename] == [note]


def test_generate_all_sounds_chord_examples(
    generated_sounds: dict[str, list[int]],
) -> None:
    assert generated_sounds["midi/4_a_major.wav"] == [69, 73, 76]
    assert generated_sounds["midi/4_c_major.wav"] == [72, 76, 79]
    assert generated_sounds["midi/4_d_minor_seventh.wav"] == [74, 77, 81, 84]


def test_generate_all_sounds_chords(
    generated_sounds: dict[str, list[int]],
) -> None:
    for octave in Octaves:
        for key in Keys:
            root = octave.value.get_midi_start() + key.value.get_midi_offset()
            for chord in Chords:
                filename = Midi.get_filename(
                    octave=octave.value, key=key.value, chord=chord.value
                )
                assert generated_sounds[filename] == [
                    root + interval.get_semitones()
                    for interval in chord.value.get_intervals()
                ]
