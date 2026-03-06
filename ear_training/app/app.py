#!/usr/bin/env python3

from __future__ import annotations
import logging
import os
import random
from app.sounds import (
    Chord,
    Interval,
    Key,
    Keys,
    Octaves,
    Scale,
    SoundType,
    SoundTypes,
)
from app.narration import Narration, Phrases
from pathlib import Path
from app.audio import Audio
from app.midi import Midi


class EarTraining:
    base_dir = os.path.join(Path(__file__).parent.parent, "audio")
    rendered_dir = os.path.join(base_dir, "rendered")

    key: Key
    sound_type: SoundType
    sound_choices: list[Chord | Interval | Scale]

    def __init__(
        self,
        key: Key,
        sound_type: SoundType,
        sound_type_choices: list[Chord | Interval | Scale],
    ) -> None:
        self.key = key
        self.sound_type = sound_type
        self.sound_choices = sound_type_choices
        self._print_config()

    def _print_config(self) -> None:
        logging.info(f"Key: {self.key.get_name()}")
        logging.info(f"Sound Type: {self.sound_type.get_name()}")
        logging.info(
            f"Sound Choices: {[choice.get_name() for choice in self.sound_choices]}"
        )

    @staticmethod
    def _set_key(key: str | None) -> Key:
        if not key:
            random_key = random.choice(list(Keys)).value
            logging.debug(f"No key specified, using {random_key.get_name()}")
            return random_key
        return Keys[key.lower()].value

    @staticmethod
    def _set_sound_type(sound_type: str | None) -> SoundType:
        if not sound_type:
            random_sound_type = random.choice(list(SoundTypes)).value
            logging.debug(
                f"No sound type specified, using {random_sound_type.get_name()}"
            )
            return random_sound_type
        return SoundTypes[sound_type.lower()].value

    @staticmethod
    def _set_sound_type_choices(
        sound_type: SoundType,
        sound_type_choices: list[str],
    ) -> list[Chord | Interval | Scale]:

        if not sound_type_choices:
            random_sound_type_choices: list[Chord | Interval | Scale] = (
                random.sample(
                    [t for t in sound_type.get_types()],
                    k=random.randint(1, len(sound_type.get_types())),
                )
            )
            logging.debug(
                f"No {sound_type.get_name()} type(s) specified, using {random_sound_type_choices}"
            )
            return random_sound_type_choices
        return sound_type.get_types(sound_type_choices)

    @staticmethod
    def from_args(
        key_name: str | None = None,
        sound_type_name: str | None = None,
        sound_type_choice_names: list[str] = [],
    ) -> EarTraining:

        key = EarTraining._set_key(key_name)
        sound_type = EarTraining._set_sound_type(sound_type_name)
        sound_type_choices = EarTraining._set_sound_type_choices(
            sound_type=sound_type,
            sound_type_choices=sound_type_choice_names,
        )

        return EarTraining(
            key=key,
            sound_type=sound_type,
            sound_type_choices=sound_type_choices,
        )

    @staticmethod
    def generate_audio() -> None:
        Narration.generate_all_narrations(out_dir=EarTraining.base_dir)
        Midi.generate_all_sounds(out_dir=EarTraining.base_dir)
        Audio.generate_all_silences(out_dir=EarTraining.base_dir)

    def generate_sound(self) -> None:
        # match self.sound_type.get_name():
        #     case SoundTypes.chords.value.get_name():
        #         ...
        #     case SoundTypes.intervals.value.get_name():
        #         ...
        #     case SoundTypes.scales.value.get_name():
        #         ...

        sound_files = [
            Narration.get_filename(self.sound_type),
            Narration.get_filename(Phrases.in_the_key_of.value),
            Narration.get_filename(self.key),
            Audio.get_filename(1000),
        ]

        octave = Octaves.octave_4.value

        for chord in self.sound_choices:
            sound_files.append(Narration.get_filename(chord))
            sound_files.append(Midi.get_filename(octave, self.key, chord))

        for i in range(len(sound_files)):
            sound_files[i] = os.path.join(EarTraining.base_dir, sound_files[i])

        if not os.path.exists(EarTraining.rendered_dir):
            os.makedirs(EarTraining.rendered_dir)
            logging.debug(f"Created directory {EarTraining.rendered_dir}")

        output_file = os.path.join(EarTraining.rendered_dir, f"test.mp3")
        Audio.splice(input_files=sound_files, output_file=output_file)
        logging.info(f"Generated sound at {output_file}")
