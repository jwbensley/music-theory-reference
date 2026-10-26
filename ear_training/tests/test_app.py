from __future__ import annotations
import os
from pathlib import Path
import random
import re
from typing import Any

import pytest

from app.app import EarTraining
from app.audio import Audio
from app.midi import Midi
from app.narration import Narration
from app.sounds import (
    Chords,
    Intervals,
    Keys,
    Octaves,
    Scales,
    SoundTypes,
)
from conftest import SpliceCall


def test_from_args() -> None:
    et = EarTraining.from_args(
        repetitions=2,
        octave_name="3",
        key_name="f_sharp",
        exercise_name="intervals",
        exercise_choice_names=["octave", "minor_third"],
    )
    assert et.repetitions == 2
    assert et.octave is Octaves.three.value
    assert et.key is Keys.f_sharp.value
    assert et.exercise_type is SoundTypes.intervals.value
    assert et.exercise_choices == [
        Intervals.octave.value,
        Intervals.minor_third.value,
    ]


def test_from_args_random() -> None:
    for seed in range(50):
        random.seed(seed)
        et = EarTraining.from_args()
        assert 1 <= et.repetitions <= 5
        assert et.octave in [o.value for o in Octaves]
        assert et.key in [k.value for k in Keys]
        assert et.exercise_type in [s.value for s in SoundTypes]
        assert et.exercise_choices
        # The random choices must match the random exercise type
        for choice in et.exercise_choices:
            assert choice in et.exercise_type.get_types()


def test_get_output_filename(
    monkeypatch: pytest.MonkeyPatch, tmp_path: Path
) -> None:
    monkeypatch.setattr(EarTraining, "rendered_dir", str(tmp_path))
    filename = EarTraining.get_output_filename("chords", "c")
    assert os.path.dirname(filename) == str(tmp_path)
    assert re.fullmatch(r"et_\d{8}_\d{6}_chords_c\.mp3", Path(filename).name)


def intro(exercise_type: str, key: str) -> list[str]:
    """
    The files which introduce an exercise, e.g. "Chords in C".
    """
    return [
        f"narration/{exercise_type}.wav",
        "narration/in.wav",
        f"narration/{key}.wav",
        "silences/silence_1000ms.wav",
    ]


def test_generate_exercise_chords(splice_calls: list[SpliceCall]) -> None:
    et = EarTraining(
        octave=Octaves.four.value,
        key=Keys.c.value,
        exercise_type=SoundTypes.chords.value,
        exercise_choices=[Chords.major.value],
        repetitions=1,
    )
    output_file = et.generate_exercise()

    assert len(splice_calls) == 1
    assert splice_calls[0].output_file == output_file
    assert splice_calls[0].overwrite
    assert os.path.isfile(output_file)
    assert splice_calls[0].relative_input_files() == intro("chords", "c") + [
        # The root note, then the chord three times
        "midi/4_c_4.wav",
        "midi/4_c_major.wav",
        "midi/4_c_major.wav",
        "midi/4_c_major.wav",
        # "That was C major"
        "narration/that_was.wav",
        "narration/c.wav",
        "narration/major.wav",
        "silences/silence_1000ms.wav",
    ]


def test_generate_exercise_intervals(splice_calls: list[SpliceCall]) -> None:
    et = EarTraining(
        octave=Octaves.four.value,
        key=Keys.g.value,
        exercise_type=SoundTypes.intervals.value,
        exercise_choices=[Intervals.perfect_fifth.value],
        repetitions=1,
    )
    et.generate_exercise()

    # The root note, then the root and the interval three times
    interval = [
        "silences/silence_500ms.wav",
        "midi/4_g_1.wav",
        "midi/5_d_2.wav",
    ]
    assert splice_calls[0].relative_input_files() == (
        intro("intervals", "g")
        + ["midi/4_g_4.wav"]
        + interval * 3
        + [
            "silences/silence_1000ms.wav",
            # "That was G perfect fifth D"
            "narration/that_was.wav",
            "narration/g.wav",
            "narration/perfect_fifth.wav",
            "narration/d.wav",
            "silences/silence_1000ms.wav",
        ]
    )


def test_generate_exercise_scales(splice_calls: list[SpliceCall]) -> None:
    et = EarTraining(
        octave=Octaves.four.value,
        key=Keys.a.value,
        exercise_type=SoundTypes.scales.value,
        exercise_choices=[Scales.pentatonic_minor.value],
        repetitions=1,
    )
    et.generate_exercise()

    def scale(duration: str) -> list[str]:
        notes = ["4_a", "4_c", "4_d", "4_e", "4_g", "5_a"]
        return [
            f"midi/{note}_{duration}.wav" for note in notes + notes[::-1]
        ] + ["silences/silence_1000ms.wav"]

    # The scale is played up and down three times, alternating the tempo
    assert splice_calls[0].relative_input_files() == (
        intro("scales", "a")
        + scale("0_25")
        + scale("0_5")
        + scale("0_25")
        + [
            # "That was A pentatonic minor"
            "narration/that_was.wav",
            "narration/a.wav",
            "narration/pentatonic_minor.wav",
            "silences/silence_1000ms.wav",
        ]
    )


def test_generate_exercise_repetitions(
    splice_calls: list[SpliceCall],
) -> None:
    chords = [Chords.major, Chords.minor, Chords.diminished]
    et = EarTraining(
        octave=Octaves.two.value,
        key=Keys.e_flat.value,
        exercise_type=SoundTypes.chords.value,
        exercise_choices=[c.value for c in chords],
        repetitions=4,
    )
    et.generate_exercise()

    files = splice_calls[0].relative_input_files()
    for chord in chords:
        name = chord.value.get_name()
        assert files.count(f"midi/2_e_flat_{name}.wav") == 4 * 3
        assert files.count(f"narration/{name}.wav") == 4


@pytest.fixture(scope="module")
def generated_files(tmp_path_factory: pytest.TempPathFactory) -> set[str]:
    """
    The relative path of every file EarTraining.generate_audio() creates,
    collected without rendering any audio.
    """
    out_dir = str(tmp_path_factory.mktemp("audio"))
    files: set[str] = set()

    with pytest.MonkeyPatch.context() as mp:
        mp.setattr(EarTraining, "base_dir", out_dir)
        mp.setattr(
            Narration,
            "generate_audio",
            lambda phrase, filename, out_dir: files.add(filename),
        )
        mp.setattr(
            Midi,
            "_generate_midi_file",
            lambda notes, filename, **kwargs: files.add(filename),
        )
        mp.setattr(
            Audio,
            "generate_silence",
            lambda duration_ms, output_file: files.add(
                os.path.relpath(output_file, out_dir)
            ),
        )
        EarTraining.generate_audio()

    return files


def every_octave_and_sound_type() -> list[Any]:
    params = []
    for octave in Octaves:
        for sound_type in SoundTypes:
            marks = []
            if octave is Octaves.seven and sound_type is not SoundTypes.chords:
                marks.append(
                    pytest.mark.xfail(
                        raises=ValueError,
                        strict=True,
                        reason="Bug: notes above the highest octave can't be played",
                    )
                )
            params.append(
                pytest.param(
                    octave,
                    sound_type,
                    marks=marks,
                    id=f"octave_{octave.value.get_name()}-{sound_type.value.get_name()}",
                )
            )
    return params


@pytest.mark.parametrize("octave, sound_type", every_octave_and_sound_type())
def test_exercises_only_use_generated_files(
    octave: Octaves,
    sound_type: SoundTypes,
    generated_files: set[str],
    splice_calls: list[SpliceCall],
) -> None:
    for key in Keys:
        for choice in sound_type.value.get_types():
            EarTraining(
                octave=octave.value,
                key=key.value,
                exercise_type=sound_type.value,
                exercise_choices=[choice],
                repetitions=1,
            ).generate_exercise()

    used_files = {f for c in splice_calls for f in c.relative_input_files()}
    assert used_files - generated_files == set()
