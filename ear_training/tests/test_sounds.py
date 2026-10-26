from enum import Enum
import random

import pytest

from app.sounds import (
    Chords,
    Durations,
    Intervals,
    Keys,
    Octaves,
    Phrases,
    Scales,
    SoundTypes,
)


@pytest.mark.parametrize(
    "enum",
    [Chords, Durations, Intervals, Keys, Octaves, Phrases, Scales, SoundTypes],
)
def test_names_are_unique(enum: type[Enum]) -> None:
    # Members with equal values silently become aliases of each other
    assert len(enum.__members__) == len(list(enum))
    # Names are used for lookups and audio filenames
    names = [member.value.get_name() for member in enum]
    assert len(names) == len(set(names))


def test_interval_semitones() -> None:
    assert {
        i.value.get_name(): i.value.get_semitones() for i in Intervals
    } == {
        "unison": 0,
        "minor_second": 1,
        "major_second": 2,
        "minor_third": 3,
        "major_third": 4,
        "perfect_fourth": 5,
        "augmented_fourth": 6,
        "diminished_fifth": 6,
        "tritone": 6,
        "perfect_fifth": 7,
        "augmented_fifth": 8,
        "minor_sixth": 8,
        "major_sixth": 9,
        "diminished_seventh": 9,
        "minor_seventh": 10,
        "major_seventh": 11,
        "octave": 12,
    }


@pytest.mark.parametrize(
    "chord, semitones",
    [
        (Chords.major, [0, 4, 7]),
        (Chords.minor, [0, 3, 7]),
        (Chords.diminished, [0, 3, 6]),
        (Chords.augmented, [0, 4, 8]),
        (Chords.major_seventh, [0, 4, 7, 11]),
        (Chords.minor_seventh, [0, 3, 7, 10]),
        (Chords.dominant_seventh, [0, 4, 7, 10]),
        (Chords.diminished_seventh, [0, 3, 6, 9]),
        (Chords.augmented_seventh, [0, 4, 8, 10]),
        (Chords.augmented_major_seventh, [0, 4, 8, 11]),
    ],
)
def test_chord_semitones(chord: Chords, semitones: list[int]) -> None:
    intervals = chord.value.get_intervals()
    assert [i.get_semitones() for i in intervals] == semitones


@pytest.mark.parametrize(
    "scale, semitones",
    [
        (Scales.major, [0, 2, 4, 5, 7, 9, 11, 12]),
        (Scales.minor, [0, 2, 3, 5, 7, 8, 10, 12]),
        (Scales.harmonic_minor, [0, 2, 3, 5, 7, 8, 11, 12]),
        (Scales.melodic_minor, [0, 2, 3, 5, 7, 9, 11, 12]),
        (Scales.pentatonic_major, [0, 2, 4, 7, 9, 12]),
        (Scales.pentatonic_minor, [0, 3, 5, 7, 10, 12]),
    ],
)
def test_scale_semitones(scale: Scales, semitones: list[int]) -> None:
    intervals = scale.value.get_intervals()
    assert [i.get_semitones() for i in intervals] == semitones


def test_every_pitch_class_has_a_key() -> None:
    offsets = {k.value.get_midi_offset() for k in Keys}
    assert offsets == set(range(12))


def test_natural_key_offsets() -> None:
    # Offsets are relative to A, the first note of each octave
    naturals = [Keys.a, Keys.b, Keys.c, Keys.d, Keys.e, Keys.f, Keys.g]
    assert [k.value.get_midi_offset() for k in naturals] == [
        0,
        2,
        3,
        5,
        7,
        8,
        10,
    ]


@pytest.mark.parametrize(
    "sharp, flat",
    [
        (Keys.a_sharp, Keys.b_flat),
        (Keys.c_sharp, Keys.d_flat),
        (Keys.d_sharp, Keys.e_flat),
        (Keys.f_sharp, Keys.g_flat),
        (Keys.g_sharp, Keys.a_flat),
    ],
)
def test_enharmonic_keys_share_an_offset(sharp: Keys, flat: Keys) -> None:
    assert sharp.value.get_midi_offset() == flat.value.get_midi_offset()


@pytest.mark.parametrize(
    "key, interval, expected",
    [
        (Keys.c, Intervals.unison, Keys.c),
        (Keys.c, Intervals.major_third, Keys.e),
        (Keys.c, Intervals.perfect_fifth, Keys.g),
        (Keys.e, Intervals.minor_second, Keys.f),
        # Wrap around past the end of the octave
        (Keys.g, Intervals.perfect_fifth, Keys.d),
        (Keys.g_sharp, Intervals.minor_second, Keys.a),
        (Keys.a, Intervals.octave, Keys.a),
    ],
)
def test_key_raised_by(key: Keys, interval: Intervals, expected: Keys) -> None:
    assert key.value.raised_by(interval.value) is expected.value


@pytest.mark.parametrize(
    "key, interval, expected",
    [
        (Keys.c, Intervals.perfect_fifth, Octaves.four),
        (Keys.g_sharp, Intervals.unison, Octaves.four),
        # Cross into the next octave
        (Keys.g, Intervals.perfect_fifth, Octaves.five),
        (Keys.g_sharp, Intervals.minor_second, Octaves.five),
        (Keys.a, Intervals.octave, Octaves.five),
    ],
)
def test_octave_raised_by(
    key: Keys, interval: Intervals, expected: Octaves
) -> None:
    raised = Octaves.four.value.raised_by(key.value, interval.value)
    assert raised is expected.value


def test_octave_raised_by_beyond_highest_octave() -> None:
    with pytest.raises(ValueError):
        Octaves.seven.value.raised_by(Keys.a.value, Intervals.octave.value)


def test_octaves_are_twelve_semitones_apart() -> None:
    starts = [o.value.get_midi_start() for o in Octaves]
    # A0 is the lowest key on a piano
    assert starts[0] == 21
    assert all(b - a == 12 for a, b in zip(starts, starts[1:]))


@pytest.mark.parametrize("name", ["c_sharp", "C_SHARP"])
def test_keys_get_by_name(name: str) -> None:
    assert Keys.get_or_random(name) is Keys.c_sharp.value


def test_octaves_get_by_name() -> None:
    assert Octaves.get_or_random("4") is Octaves.four.value


@pytest.mark.parametrize("name", ["scales", "Scales"])
def test_sound_types_get_by_name(name: str) -> None:
    assert SoundTypes.get_or_random(name) is SoundTypes.scales.value


@pytest.mark.parametrize("name", [None, ""])
def test_get_random(name: str | None) -> None:
    assert Keys.get_or_random(name) in [k.value for k in Keys]
    assert Octaves.get_or_random(name) in [o.value for o in Octaves]
    assert SoundTypes.get_or_random(name) in [s.value for s in SoundTypes]


@pytest.mark.parametrize(
    "sound_type, enum",
    [
        (SoundTypes.chords, Chords),
        (SoundTypes.intervals, Intervals),
        (SoundTypes.scales, Scales),
    ],
)
def test_sound_type_get_types(
    sound_type: SoundTypes, enum: type[Enum]
) -> None:
    assert sound_type.value.get_types() == [member.value for member in enum]


def test_sound_type_get_types_filter() -> None:
    chords = SoundTypes.chords.value
    # Case insensitive, filter order is preserved, unknown names are ignored
    assert chords.get_types(["minor", "MAJOR", "octave"]) == [
        Chords.minor.value,
        Chords.major.value,
    ]


def test_sound_type_get_or_random_by_name() -> None:
    assert SoundTypes.intervals.value.get_or_random(["tritone"]) == [
        Intervals.tritone.value
    ]


def test_sound_type_get_or_random() -> None:
    scales = SoundTypes.scales.value
    for seed in range(50):
        random.seed(seed)
        choices = scales.get_or_random([])
        assert 1 <= len(choices) <= len(scales.get_types())
        assert all(choice in scales.get_types() for choice in choices)
        assert len({choice.get_name() for choice in choices}) == len(choices)
