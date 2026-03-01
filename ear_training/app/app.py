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
    Scale,
    SoundType,
    SoundTypes,
)
from app.narration import Narration
from pathlib import Path


class EarTraining:
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
        Narration.generate_narration(
            out_dir=os.path.join(
                Path(__file__).parent.parent, "audio", "narration"
            )
        )

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
