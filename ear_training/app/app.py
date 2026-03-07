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
    Octave,
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

    octave: Octave
    key: Key
    sound_type: SoundType
    sound_choices: list[Chord | Interval | Scale]

    def __init__(
        self,
        octave: Octave,
        key: Key,
        sound_type: SoundType,
        sound_type_choices: list[Chord | Interval | Scale],
    ) -> None:
        self.octave = octave
        self.key = key
        self.sound_type = sound_type
        self.sound_choices = sound_type_choices
        self._print_config()

    def _print_config(self) -> None:
        logging.info(f"Octave: {self.octave.get_name()}")
        logging.info(f"Key: {self.key.get_name()}")
        logging.info(f"Sound Type: {self.sound_type.get_name()}")
        logging.info(
            f"Sound Choices: {[choice.get_name() for choice in self.sound_choices]}"
        )

    @staticmethod
    def from_args(
        octave_name: str | None = None,
        key_name: str | None = None,
        sound_type_name: str | None = None,
        sound_type_choice_names: list[str] = [],
    ) -> EarTraining:
        """
        Init an instance using provided args, or random values if args are not provided,
        or a mixture of provided args and random values.
        """
        octave = Octaves.get_or_random(octave_name)
        key = Keys.get_or_random(key_name)
        sound_type = SoundTypes.get_or_random(sound_type_name)
        sound_type_choices = sound_type.get_or_random(sound_type_choice_names)

        return EarTraining(
            octave=octave,
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
            Narration.get_filename(Phrases.in_.value),
            Narration.get_filename(self.key),
            Audio.get_filename(1000),
        ]

        for chord in self.sound_choices:
            sound_files.append(Midi.get_filename(self.octave, self.key))
            sound_files.append(Audio.get_filename(1000))
            sound_files.append(Midi.get_filename(self.octave, self.key, chord))
            sound_files.append(Audio.get_filename(1000))
            sound_files.append(Midi.get_filename(self.octave, self.key, chord))
            sound_files.append(Audio.get_filename(1000))
            sound_files.append(Midi.get_filename(self.octave, self.key, chord))
            sound_files.append(Audio.get_filename(1000))
            sound_files.append(Narration.get_filename(Phrases.that_was.value))
            sound_files.append(Narration.get_filename(self.key))
            sound_files.append(Narration.get_filename(chord))
            sound_files.append(Audio.get_filename(1000))

        for i in range(len(sound_files)):
            sound_files[i] = os.path.join(EarTraining.base_dir, sound_files[i])

        if not os.path.exists(EarTraining.rendered_dir):
            os.makedirs(EarTraining.rendered_dir)
            logging.debug(f"Created directory {EarTraining.rendered_dir}")

        output_file = os.path.join(EarTraining.rendered_dir, f"test.mp3")
        Audio.splice(
            input_files=sound_files, output_file=output_file, overwrite=True
        )
        logging.info(f"Generated sound at {output_file}")
