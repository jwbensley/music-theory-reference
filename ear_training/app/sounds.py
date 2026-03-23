from __future__ import annotations
from enum import Enum
import logging
import random
from pydantic import BaseModel


class Duration:
    name: str
    duration: float
    trim: int

    def __init__(self, name: str, duration: float, trim: int) -> None:
        self.name = name
        self.duration = duration
        self.trim = trim

    def get_duration(self) -> float:
        return self.duration

    def get_name(self) -> str:
        return self.name

    def get_trim(self) -> int:
        return self.trim


class Durations(Enum):
    quatre = Duration(name="0_25", duration=0.25, trim=2700)
    half = Duration(name="0_5", duration=0.5, trim=2500)
    one = Duration(name="1", duration=1, trim=2500)
    two = Duration(name="2", duration=2, trim=2000)
    four = Duration(name="4", duration=4, trim=2000)
    eight = Duration(name="8", duration=8, trim=2500)


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
        return self.get_display_name()

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
    augmented_fourth = Interval(
        name="augmented_fourth", display_name="augmented fourth", semitones=6
    )
    diminished_fifth = Interval(
        name="diminished_fifth", display_name="diminished fifth", semitones=6
    )
    tritone = Interval(name="tritone", display_name="tritone", semitones=6)
    perfect_fifth = Interval(
        name="perfect_fifth", display_name="perfect fifth", semitones=7
    )
    augmented_fifth = Interval(
        name="augmented_fifth", display_name="augmented fifth", semitones=8
    )
    minor_sixth = Interval(
        name="minor_sixth", display_name="minor sixth", semitones=8
    )
    major_sixth = Interval(
        name="major_sixth", display_name="major sixth", semitones=9
    )
    diminished_seventh = Interval(
        name="diminished_seventh",
        display_name="diminished seventh",
        semitones=9,
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
        return self.get_display_name()


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
            Intervals.diminished_fifth.value,
        ],
    )
    augmented = Chord(
        name="augmented",
        display_name="augmented",
        intervals=[
            Intervals.unison.value,
            Intervals.major_third.value,
            Intervals.augmented_fifth.value,
        ],
    )
    major_seventh = Chord(
        name="major_seventh",
        display_name="major seventh",
        intervals=[
            Intervals.unison.value,
            Intervals.major_third.value,
            Intervals.perfect_fifth.value,
            Intervals.major_seventh.value,
        ],
    )
    minor_seventh = Chord(
        name="minor_seventh",
        display_name="minor seventh",
        intervals=[
            Intervals.unison.value,
            Intervals.minor_third.value,
            Intervals.perfect_fifth.value,
            Intervals.minor_seventh.value,
        ],
    )
    dominant_seventh = Chord(
        name="dominant_seventh",
        display_name="dominant seventh",
        intervals=[
            Intervals.unison.value,
            Intervals.major_third.value,
            Intervals.perfect_fifth.value,
            Intervals.minor_seventh.value,
        ],
    )
    diminished_seventh = Chord(
        name="diminished_seventh",
        display_name="diminished seventh",
        intervals=[
            Intervals.unison.value,
            Intervals.minor_third.value,
            Intervals.diminished_fifth.value,
            Intervals.diminished_seventh.value,
        ],
    )
    augmented_seventh = Chord(
        name="augmented_seventh",
        display_name="augmented seventh",
        intervals=[
            Intervals.unison.value,
            Intervals.major_third.value,
            Intervals.augmented_fifth.value,
            Intervals.minor_seventh.value,
        ],
    )
    augmented_major_seventh = Chord(
        name="augmented_major_seventh",
        display_name="augmented major seventh",
        intervals=[
            Intervals.unison.value,
            Intervals.major_third.value,
            Intervals.augmented_fifth.value,
            Intervals.major_seventh.value,
        ],
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
        return self.get_display_name()


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

    def get_display_name(self) -> str:
        return self.display_name

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.get_display_name()

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

    def get_or_random(
        self: SoundType,
        sound_type_choices: list[str],
    ) -> list[Chord | Interval | Scale]:

        if not sound_type_choices:
            random_sound_type_choices: list[Chord | Interval | Scale] = (
                random.sample(
                    [t for t in self.get_types()],
                    k=random.randint(1, len(self.get_types())),
                )
            )
            logging.debug(
                f"No {self.get_name()} specified, using {random_sound_type_choices}"
            )
            return random_sound_type_choices
        return self.get_types(sound_type_choices)


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

    @staticmethod
    def get_or_random(sound_type: str | None) -> SoundType:
        if not sound_type:
            rnd = random.choice(list(SoundTypes)).value
            logging.debug(f"No sound type specified, using {rnd.get_name()}")
            return rnd
        return next(
            s.value
            for s in SoundTypes
            if s.value.get_name() == sound_type.lower()
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

    def raised_by(self, interval: Interval) -> Key:
        # If the offset breaks into the next octave, wrap around to the beginning of the octave
        new_midi_offset = (self.midi_offset + interval.get_semitones()) % 12
        for key in Keys:
            if key.value.get_midi_offset() == new_midi_offset:
                return key.value
        raise ValueError(f"No key found with MIDI offset {new_midi_offset}")


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
        pronunciation="E flat",
        midi_offset=6,
    )
    e = Key(name="e", display_name="e", pronunciation="E", midi_offset=7)
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

    @staticmethod
    def get_or_random(name: str | None) -> Key:
        if not name:
            rnd = random.choice(list(Keys)).value
            logging.debug(f"No key specified, using {rnd.get_name()}")
            return rnd
        return next(
            k.value for k in Keys if k.value.get_name() == name.lower()
        )


class Octave:
    name: str
    midi_start: int

    def __init__(self, name: str, midi_start: int = 0) -> None:
        self.name = name
        self.midi_start = midi_start

    def __str__(self) -> str:
        return str(self.name)

    def get_midi_start(self) -> int:
        return self.midi_start

    def get_name(self) -> str:
        return self.name

    def raised_by(self, key: Key, interval: Interval) -> Octave:
        # If the offset breaks into the next octave, return the next octave
        if key.get_midi_offset() + interval.get_semitones() >= 12:
            for octave in Octaves:
                if octave.value.get_midi_start() == self.midi_start + 12:
                    return octave.value
            else:
                raise ValueError(
                    f"No octave found with MIDI start {self.midi_start + 12}"
                )
        return self


class Octaves(Enum):
    zero = Octave(name="0", midi_start=21)
    one = Octave(name="1", midi_start=33)
    two = Octave(name="2", midi_start=45)
    three = Octave(name="3", midi_start=57)
    four = Octave(name="4", midi_start=69)
    five = Octave(name="5", midi_start=81)
    six = Octave(name="6", midi_start=93)
    seven = Octave(name="7", midi_start=105)

    @staticmethod
    def get_or_random(name: str | None) -> Octave:
        if not name:
            rnd = random.choice(list(Octaves)).value
            logging.debug(f"No octave specified, using {rnd.get_name()}")
            return rnd
        return next(
            o.value for o in Octaves if o.value.get_name() == name.lower()
        )


class Phrase:
    name: str

    def __init__(self, name: str) -> None:
        self.name = name

    def get_name(self) -> str:
        return self.name

    def get_pronunciation(self) -> str:
        return self.get_name()


class Phrases(Enum):
    in_ = Phrase("in")
    in_the_key_of = Phrase("in the key of")
    that_was = Phrase("that was")
