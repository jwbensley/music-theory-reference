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
    tritone = Interval(name="tritone", display_name="tritone", semitones=6)
    perfect_fifth = Interval(
        name="perfect_fifth", display_name="perfect fifth", semitones=7
    )
    minor_sixth = Interval(
        name="minor_sixth", display_name="minor sixth", semitones=8
    )
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
    interval: Interval

    def __str__(self) -> str:
        return self.name

    def get_display_name(self) -> str:
        return self.display_name

    def get_name(self) -> str:
        return self.name

    def get_interval(self) -> Interval:
        return self.interval

    def get_pronunciation(self) -> str:
        return self.get_name()


class Chords(Enum):
    major = Chord(
        name="major",
        display_name="major",
        interval=Intervals.major_third.value,
    )
    minor = Chord(
        name="minor",
        display_name="minor",
        interval=Intervals.minor_third.value,
    )
    diminished = Chord(
        name="diminished",
        display_name="diminished",
        interval=Intervals.minor_third.value,
    )
    augmented = Chord(
        name="augmented",
        display_name="augmented",
        interval=Intervals.major_third.value,
    )
    fifth = Chord(
        name="fifth",
        display_name="fifth",
        interval=Intervals.perfect_fifth.value,
    )
    seventh = Chord(
        name="seventh",
        display_name="seventh",
        interval=Intervals.minor_seventh.value,
    )
    ninth = Chord(
        name="ninth",
        display_name="ninth",
        interval=Intervals.major_second.value,
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
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_second.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_second.value,
        ],
    )
    minor = Scale(
        name="minor",
        display_name="minor",
        intervals=[
            Intervals.major_second.value,
            Intervals.minor_second.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_second.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
        ],
    )
    harmonic_minor = Scale(
        name="harmonic_minor",
        display_name="harmonic minor",
        intervals=[
            Intervals.major_second.value,
            Intervals.minor_second.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_second.value,
            Intervals.minor_third.value,
            Intervals.minor_second.value,
        ],
    )
    melodic_minor = Scale(
        name="melodic_minor",
        display_name="melodic minor",
        intervals=[
            Intervals.major_second.value,
            Intervals.minor_second.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_second.value,
        ],
    )
    pentatonic_major = Scale(
        name="pentatonic_major",
        display_name="pentatonic major",
        intervals=[
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
        ],
    )
    pentatonic_minor = Scale(
        name="pentatonic_minor",
        display_name="pentatonic minor",
        intervals=[
            Intervals.minor_third.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
            Intervals.major_second.value,
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

    def __str__(self) -> str:
        return self.name

    def get_display_name(self) -> str:
        return self.display_name

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.pronunciation


class Keys(Enum):
    a_flat = Key(name="a_flat", display_name="ab", pronunciation="Ay flat")
    a = Key(name="a", display_name="a", pronunciation="A")
    a_sharp = Key(name="a_sharp", display_name="a#", pronunciation="Ay sharp")
    b_flat = Key(name="b_flat", display_name="bb", pronunciation="Bee flat")
    b = Key(name="b", display_name="b", pronunciation="Bee")
    c = Key(name="c", display_name="c", pronunciation="Cee")
    c_sharp = Key(name="c_sharp", display_name="c#", pronunciation="Cee sharp")
    d_flat = Key(name="d_flat", display_name="db", pronunciation="Dee flat")
    d = Key(name="d", display_name="d", pronunciation="Dee")
    d_sharp = Key(name="d_sharp", display_name="d#", pronunciation="Dee sharp")
    e_flat = Key(name="e_flat", display_name="eb", pronunciation="Ee flat")
    e = Key(name="e", display_name="e", pronunciation="Ee")
    f = Key(name="f", display_name="f", pronunciation="Ef")
    f_sharp = Key(name="f_sharp", display_name="f#", pronunciation="Ef sharp")
    g_flat = Key(name="g_flat", display_name="gb", pronunciation="Gee flat")
    g = Key(name="g", display_name="g", pronunciation="Gee")
    g_sharp = Key(name="g_sharp", display_name="g#", pronunciation="Gee sharp")
