from enum import Enum
from typing import Protocol


class NarratedSound(Protocol):
    def get_pronunciation(self) -> str: ...
    def get_sanitized_name(self) -> str: ...


class Interval:
    name: str
    semitones: int

    def __init__(self, name: str, semitones: int) -> None:
        self.name = name
        self.semitones = semitones

    def __str__(self) -> str:
        return self.name

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.get_name()

    def get_sanitized_name(self) -> str:
        return self.get_name().replace(" ", "_").lower()


class Intervals(Enum):
    unison = Interval("unison", 0)
    minor_second = Interval("minor second", 1)
    major_second = Interval("major second", 2)
    minor_third = Interval("minor third", 3)
    major_third = Interval("major third", 4)
    perfect_fourth = Interval("perfect fourth", 5)
    tritone = Interval("tritone", 6)
    perfect_fifth = Interval("perfect fifth", 7)
    minor_sixth = Interval("minor sixth", 8)
    major_sixth = Interval("major sixth", 9)
    minor_seventh = Interval("minor seventh", 10)
    major_seventh = Interval("major seventh", 11)
    octave = Interval("octave", 12)


class Chord:
    name: str
    interval: Interval

    def __init__(self, name: str, interval: Interval) -> None:
        self.name = name
        self.interval = interval

    def __str__(self) -> str:
        return self.name

    def get_name(self) -> str:
        return self.name

    def get_interval(self) -> Interval:
        return self.interval

    def get_pronunciation(self) -> str:
        return self.get_name()

    def get_sanitized_name(self) -> str:
        return self.get_name().replace(" ", "_").lower()


class Chords(Enum):
    major = Chord("major", Intervals.major_third.value)
    minor = Chord("minor", Intervals.minor_third.value)
    diminished = Chord("diminished", Intervals.minor_third.value)
    augmented = Chord("augmented", Intervals.major_third.value)
    fifth = Chord("fifth", Intervals.perfect_fifth.value)
    seventh = Chord("seventh", Intervals.minor_seventh.value)
    ninth = Chord("ninth", Intervals.major_second.value)


class Scale:
    name: str
    intervals: list[Interval]

    def __init__(self, name: str, intervals: list[Interval]) -> None:
        self.name = name
        self.intervals = intervals

    def __str__(self) -> str:
        return self.name

    def get_name(self) -> str:
        return self.name

    def get_intervals(self) -> list[Interval]:
        return self.intervals

    def get_pronunciation(self) -> str:
        return self.get_name()

    def get_sanitized_name(self) -> str:
        return self.get_name().replace(" ", "_").lower()


class Scales(Enum):
    major = Scale(
        "major",
        [
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
        "minor",
        [
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
        "harmonic minor",
        [
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
        "melodic minor",
        [
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
        "pentatonic major",
        [
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
        ],
    )
    pentatonic_minor = Scale(
        "pentatonic minor",
        [
            Intervals.minor_third.value,
            Intervals.major_second.value,
            Intervals.major_second.value,
            Intervals.minor_third.value,
            Intervals.major_second.value,
        ],
    )


class SoundType:
    name: str
    types: list[Chord | Interval | Scale]

    def __init__(
        self, name: str, types: list[Chord | Interval | Scale]
    ) -> None:
        self.name = name
        self.types = types

    def __str__(self) -> str:
        return self.name

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.get_name()

    def get_sanitized_name(self) -> str:
        return self.get_name().replace(" ", "_").lower()

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
    chords = SoundType("chords", [e.value for e in Chords])
    intervals = SoundType("intervals", [i.value for i in Intervals])
    scales = SoundType("scales", [s.value for s in Scales])


class Key:
    name: str
    pronunciation: str

    def __init__(self, name: str, pronunciation: str) -> None:
        self.name = name
        self.pronunciation = pronunciation

    def __str__(self) -> str:
        return self.name

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.pronunciation

    def get_sanitized_name(self) -> str:
        x = self.get_name().lower()
        if x == "b":
            return x
        elif x.endswith("#"):
            x = x.replace("#", "_sharp")
        elif x.endswith("b"):
            x = x.removesuffix("b") + "_flat"
        return x


class Keys(Enum):
    a_flat = Key("ab", "Ay flat")
    a = Key("a", "A")
    a_sharp = Key("a#", "Ay sharp")
    b_flat = Key("bb", "Bee flat")
    b = Key("b", "Bee")
    c = Key("c", "Cee")
    c_sharp = Key("c#", "Cee sharp")
    d_flat = Key("db", "Dee flat")
    d = Key("d", "Dee")
    d_sharp = Key("d#", "Dee sharp")
    e_flat = Key("eb", "Ee flat")
    e = Key("e", "Ee")
    f = Key("f", "Ef")
    f_sharp = Key("f#", "Ef sharp")
    g_flat = Key("gb", "Gee flat")
    g = Key("g", "Gee")
    g_sharp = Key("g#", "Gee sharp")
