from enum import Enum
from pydantic import BaseModel


class Interval(BaseModel):
    name: str
    display_name: str
    semitones: int

    def __str__(self) -> str:
        return self.name

    def get_display_name(self) -> str:
        return self.display_name

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.get_name()

    def get_semitones(self) -> int:
        return self.semitones


class Intervals(Enum):
    unison = Interval(name="unison", display_name="unison", semitones=0)
    minor_second = Interval(
        name="minor_second", display_name="minor second", semitones=1
    )
    major_second = Interval(
        name="major_second", display_name="major second", semitones=2
    )
    minor_third = Interval(
        name="minor_third", display_name="minor third", semitones=3
    )
    major_third = Interval(
        name="major_third", display_name="major third", semitones=4
    )
    perfect_fourth = Interval(
        name="perfect_fourth", display_name="perfect fourth", semitones=5
    )
    tritone = Interval(
        name="tritone", display_name="tritone", semitones=6
    )  # a.k.a diminished fifth or augmented fourth
    perfect_fifth = Interval(
        name="perfect_fifth", display_name="perfect fifth", semitones=7
    )
    minor_sixth = Interval(
        name="minor_sixth", display_name="minor sixth", semitones=8
    )  # a.k.a augmented fifth
    major_sixth = Interval(
        name="major_sixth", display_name="major sixth", semitones=9
    )
    minor_seventh = Interval(
        name="minor_seventh", display_name="minor seventh", semitones=10
    )
    major_seventh = Interval(
        name="major_seventh", display_name="major seventh", semitones=11
    )
    octave = Interval(name="octave", display_name="octave", semitones=12)


class Chord(BaseModel):
    name: str
    display_name: str
    intervals: list[Interval]

    def __str__(self) -> str:
        return self.name

    def get_display_name(self) -> str:
        return self.display_name

    def get_name(self) -> str:
        return self.name

    def get_intervals(self) -> list[Interval]:
        return self.intervals

    def get_pronunciation(self) -> str:
        return self.get_name()


class Chords(Enum):
    major = Chord(
        name="major",
        display_name="major",
        intervals=[
            Intervals.unison.value,
            Intervals.major_third.value,
            Intervals.perfect_fifth.value,
        ],
    )
    minor = Chord(
        name="minor",
        display_name="minor",
        intervals=[
            Intervals.unison.value,
            Intervals.minor_third.value,
            Intervals.perfect_fifth.value,
        ],
    )
    diminished = Chord(
        name="diminished",
        display_name="diminished",
        intervals=[
            Intervals.unison.value,
            Intervals.minor_third.value,
            Intervals.tritone.value,
        ],
    )
    augmented = Chord(
        name="augmented",
        display_name="augmented",
        intervals=[
            Intervals.unison.value,
            Intervals.major_third.value,
            Intervals.minor_sixth.value,
        ],
    )
    fifth = Chord(
        name="fifth",
        display_name="fifth",
        intervals=[Intervals.unison.value, Intervals.perfect_fifth.value],
    )
    seventh = Chord(
        name="seventh",
        display_name="seventh",
        intervals=[Intervals.unison.value, Intervals.minor_seventh.value],
    )
    ninth = Chord(
        name="ninth",
        display_name="ninth",
        intervals=[Intervals.unison.value, Intervals.major_second.value],
    )


class Scale(BaseModel):
    name: str
    display_name: str
    intervals: list[Interval]

    def __str__(self) -> str:
        return self.name

    def get_display_name(self) -> str:
        return self.display_name

    def get_name(self) -> str:
        return self.name

    def get_intervals(self) -> list[Interval]:
        return self.intervals

    def get_pronunciation(self) -> str:
        return self.get_name()


class Scales(Enum):
    major = Scale(
        name="major",
        display_name="major",
        intervals=[
            Intervals.unison.value,
            Intervals.major_second.value,
            Intervals.major_third.value,
            Intervals.perfect_fourth.value,
            Intervals.perfect_fifth.value,
            Intervals.major_sixth.value,
            Intervals.major_seventh.value,
            Intervals.octave.value,
        ],
    )
    minor = Scale(
        name="natural_minor",
        display_name="natural minor",
        intervals=[
            Intervals.unison.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
            Intervals.perfect_fourth.value,
            Intervals.perfect_fifth.value,
            Intervals.minor_sixth.value,
            Intervals.minor_seventh.value,
            Intervals.octave.value,
        ],
    )
    harmonic_minor = Scale(
        name="harmonic_minor",
        display_name="harmonic minor",
        intervals=[
            Intervals.unison.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
            Intervals.perfect_fourth.value,
            Intervals.perfect_fifth.value,
            Intervals.minor_sixth.value,
            Intervals.major_seventh.value,
            Intervals.octave.value,
        ],
    )
    melodic_minor = Scale(
        name="melodic_minor",
        display_name="melodic minor",
        intervals=[
            Intervals.unison.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
            Intervals.perfect_fourth.value,
            Intervals.perfect_fifth.value,
            Intervals.major_sixth.value,
            Intervals.major_seventh.value,
            Intervals.octave.value,
        ],
    )
    pentatonic_major = Scale(
        name="pentatonic_major",
        display_name="pentatonic major",
        intervals=[
            Intervals.unison.value,
            Intervals.major_second.value,
            Intervals.major_third.value,
            Intervals.perfect_fifth.value,
            Intervals.major_sixth.value,
            Intervals.octave.value,
        ],
    )
    pentatonic_minor = Scale(
        name="pentatonic_minor",
        display_name="pentatonic minor",
        intervals=[
            Intervals.unison.value,
            Intervals.minor_third.value,
            Intervals.perfect_fourth.value,
            Intervals.perfect_fifth.value,
            Intervals.minor_seventh.value,
            Intervals.octave.value,
        ],
    )


class SoundType(BaseModel):
    name: str
    display_name: str
    types: list[Chord | Interval | Scale]

    def __str__(self) -> str:
        return self.name

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.get_name()

    def get_types(
        self, filter: list[str] | None = None
    ) -> list[Chord | Interval | Scale]:
        if filter:
            types: list[Chord | Interval | Scale] = []
            for f in filter:
                for t in self.types:
                    if t.get_name().lower() == f.lower():
                        types.append(t)
            return types
        return self.types


class SoundTypes(Enum):
    chords = SoundType(
        name="chords", display_name="chords", types=[e.value for e in Chords]
    )
    intervals = SoundType(
        name="intervals",
        display_name="intervals",
        types=[i.value for i in Intervals],
    )
    scales = SoundType(
        name="scales", display_name="scales", types=[s.value for s in Scales]
    )


class Key(BaseModel):
    name: str
    display_name: str
    pronunciation: str
    midi_offset: int

    def __str__(self) -> str:
        return self.name

    def get_display_name(self) -> str:
        return self.display_name

    def get_midi_offset(self) -> int:
        return self.midi_offset

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.pronunciation


class Keys(Enum):
    a = Key(name="a", display_name="a", pronunciation="A", midi_offset=0)
    a_sharp = Key(
        name="a_sharp",
        display_name="a#",
        pronunciation="Ay sharp",
        midi_offset=1,
    )
    b_flat = Key(
        name="b_flat",
        display_name="bb",
        pronunciation="Bee flat",
        midi_offset=1,
    )
    b = Key(name="b", display_name="b", pronunciation="Bee", midi_offset=2)
    c = Key(name="c", display_name="c", pronunciation="Cee", midi_offset=3)
    c_sharp = Key(
        name="c_sharp",
        display_name="c#",
        pronunciation="Cee sharp",
        midi_offset=4,
    )
    d_flat = Key(
        name="d_flat",
        display_name="db",
        pronunciation="Dee flat",
        midi_offset=4,
    )
    d = Key(name="d", display_name="d", pronunciation="Dee", midi_offset=5)
    d_sharp = Key(
        name="d_sharp",
        display_name="d#",
        pronunciation="Dee sharp",
        midi_offset=6,
    )
    e_flat = Key(
        name="e_flat",
        display_name="eb",
        pronunciation="Ee flat",
        midi_offset=6,
    )
    e = Key(name="e", display_name="e", pronunciation="Ee", midi_offset=7)
    f = Key(name="f", display_name="f", pronunciation="Ef", midi_offset=8)
    f_sharp = Key(
        name="f_sharp",
        display_name="f#",
        pronunciation="Ef sharp",
        midi_offset=9,
    )
    g_flat = Key(
        name="g_flat",
        display_name="gb",
        pronunciation="Gee flat",
        midi_offset=9,
    )
    g = Key(name="g", display_name="g", pronunciation="Gee", midi_offset=10)
    g_sharp = Key(
        name="g_sharp",
        display_name="g#",
        pronunciation="Gee sharp",
        midi_offset=11,
    )
    a_flat = Key(
        name="a_flat",
        display_name="ab",
        pronunciation="Ay flat",
        midi_offset=11,
    )


class Octave:
    number: int
    midi_start: int

    def __init__(self, number: int, midi_start: int = 0) -> None:
        self.number = number
        self.midi_start = midi_start

    def __str__(self) -> str:
        return str(self.number)

    def get_midi_start(self) -> int:
        return self.midi_start

    def get_number(self) -> int:
        return self.number


class Octaves(Enum):
    octave_1 = Octave(number=0, midi_start=21)
    octave_2 = Octave(number=1, midi_start=33)
    octave_3 = Octave(number=2, midi_start=45)
    octave_4 = Octave(number=3, midi_start=57)
    octave_5 = Octave(number=4, midi_start=69)
    octave_6 = Octave(number=5, midi_start=81)
    octave_7 = Octave(number=6, midi_start=93)
    octave_8 = Octave(number=7, midi_start=105)


"""
    # Add every note on an 88 key piano, from A0 (MIDI note 21) to C8 (MIDI note 108)
    notes: list[tuple[str, int]] = [
        ("A", 21),
        ("A#", 22),
        ("B", 23),
        ("C", 24),  # C1
        ("C#", 25),
        ("D", 26),
        ("D#", 27),
        ("E", 28),
        ("F", 29),
        ("F#", 30),
        ("G", 31),
        ("G#", 32),
        ("A", 33),
        ("A#", 34),
        ("B", 35),
        ("C", 36),  # C2
        ("C#", 37),
        ("D", 38),
        ("D#", 39),
        ("E", 40),
        ("F", 41),
        ("F#", 42),
        ("G", 43),
        ("G#", 44),
        ("A", 45),
        ("A#", 46),
        ("B", 47),
        ("C", 48),  # C3
        ("C#", 49),
        ("D", 50),
        ("D#", 51),
        ("E", 52),
        ("F", 53),
        ("F#", 54),
        ("G", 55),
        ("G#", 56),
        ("A", 57),
        ("A#", 58),
        ("B", 59),
        ("C", 60),  # C4 (Middle C)
        ("C#", 61),
        ("D", 62),
        ("D#", 63),
        ("E", 64),
        ("F", 65),
        ("F#", 66),
        ("G", 67),
        ("G#", 68),
        ("A", 69),
        ("A#", 70),
        ("B", 71),
        ("C", 72),  # C5
        ("C#", 73),
        ("D", 74),
        ("D#", 75),
        ("E", 76),
        ("F", 77),
        ("F#", 78),
        ("G", 79),
        ("G#", 80),
        ("A", 81),
        ("A#", 82),
        ("B", 83),
        ("C", 84),  # C6
        ("C#", 85),
        ("D", 86),
        ("D#", 87),
        ("E", 88),
        ("F", 89),
        ("F#", 90),
        ("G", 91),
        ("G#", 92),
        ("A", 93),
        ("A#", 94),
        ("B", 95),
        ("C", 96),  # C7
        ("C#", 97),
        ("D", 98),
        ("D#", 99),
        ("E", 100),
        ("F", 101),
        ("F#", 102),
        ("G", 103),
        ("G#", 104),
        ("A", 105),
        ("A#", 106),
        ("B", 107),
        ("C", 108),  # C8
    ]
"""
