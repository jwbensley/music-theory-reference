#!/usr/bin/env python3

from __future__ import annotations
import logging
import os
from pathlib import Path
import random
from app.sounds import (
    Chord,
    Durations,
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
from app.audio import Audio
from app.midi import Midi
from tempfile import mkdtemp
from datetime import datetime


class EarTraining:
    base_dir = os.path.join(Path(__file__).parent.parent, "audio")
    rendered_dir = mkdtemp()
    # rendered_dir = os.path.join(base_dir, "rendered")

    octave: Octave
    key: Key
    exercise_type: SoundType
    exercise_choices: list[Chord | Interval | Scale]

    def __init__(
        self,
        octave: Octave,
        key: Key,
        exercise_type: SoundType,
        exercise_choices: list[Chord | Interval | Scale],
        repetitions: int,
    ) -> None:
        self.octave = octave
        self.key = key
        self.exercise_type = exercise_type
        self.exercise_choices = exercise_choices
        self.repetitions = repetitions
        self._print_config()

    def _print_config(self) -> None:
        logging.info(f"Octave: {self.octave.get_name()}")
        logging.info(f"Key: {self.key.get_name()}")
        logging.info(f"Exercise Type: {self.exercise_type.get_name()}")
        logging.info(
            f"Exercise Choices: {[choice.get_name() for choice in self.exercise_choices]}"
        )

    @staticmethod
    def from_args(
        repetitions: int | None = None,
        octave_name: str | None = None,
        key_name: str | None = None,
        exercise_name: str | None = None,
        exercise_choice_names: list[str] = [],
    ) -> EarTraining:
        """
        Init an instance using provided args, or random values if args are not provided,
        or a mixture of provided args and random values.
        """
        if not repetitions:
            repetitions = random.randint(1, 5)
        octave = Octaves.get_or_random(octave_name)
        key = Keys.get_or_random(key_name)
        exercise_type = SoundTypes.get_or_random(exercise_name)
        exercise_choices = exercise_type.get_or_random(exercise_choice_names)

        return EarTraining(
            octave=octave,
            key=key,
            exercise_type=exercise_type,
            exercise_choices=exercise_choices,
            repetitions=repetitions,
        )

    @staticmethod
    def generate_audio() -> None:
        """
        Generate all audio files for the app. This should be run before generating any exercises.
        """
        Narration.generate_all_narrations(out_dir=EarTraining.base_dir)
        Midi.generate_all_sounds(out_dir=EarTraining.base_dir)
        Audio.generate_all_silences(out_dir=EarTraining.base_dir)

    def generate_exercise(self) -> str:

        sound_files = [
            Narration.get_filename(self.exercise_type),
            Narration.get_filename(Phrases.in_.value),
            Narration.get_filename(self.key),
            Audio.get_filename(1000),
        ]

        for _ in range(self.repetitions):

            for obj in random.sample(
                self.exercise_choices, len(self.exercise_choices)
            ):
                if isinstance(obj, Chord):
                    sound_files.append(
                        Midi.get_filename(octave=self.octave, key=self.key)
                    )
                    sound_files.append(Audio.get_filename(1000))
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave, key=self.key, chord=obj
                        )
                    )
                    sound_files.append(Audio.get_filename(1000))
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave, key=self.key, chord=obj
                        )
                    )
                    sound_files.append(Audio.get_filename(1000))
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave, key=self.key, chord=obj
                        )
                    )
                    sound_files.append(Audio.get_filename(1000))
                    sound_files.append(
                        Narration.get_filename(Phrases.that_was.value)
                    )
                    sound_files.append(Narration.get_filename(self.key))
                    sound_files.append(Narration.get_filename(obj))
                    sound_files.append(Audio.get_filename(1000))

                elif isinstance(obj, Interval):
                    sound_files.append(
                        Midi.get_filename(octave=self.octave, key=self.key)
                    )
                    sound_files.append(Audio.get_filename(1000))
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave,
                            key=self.key,
                            duration=Durations.very_short,
                        )
                    )
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave,
                            key=self.key,
                            interval=obj,
                        )
                    )
                    sound_files.append(Audio.get_filename(1000))
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave,
                            key=self.key,
                            duration=Durations.very_short,
                        )
                    )
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave,
                            key=self.key,
                            interval=obj,
                        )
                    )
                    sound_files.append(Audio.get_filename(1000))
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave,
                            key=self.key,
                            duration=Durations.very_short,
                        )
                    )
                    sound_files.append(
                        Midi.get_filename(
                            octave=self.octave,
                            key=self.key,
                            interval=obj,
                        )
                    )
                    sound_files.append(Audio.get_filename(1000))
                    sound_files.append(
                        Narration.get_filename(Phrases.that_was.value)
                    )
                    sound_files.append(Narration.get_filename(self.key))
                    sound_files.append(Narration.get_filename(obj))
                    sound_files.append(
                        Narration.get_filename(self.key.raised_by(obj))
                    )
                    sound_files.append(Audio.get_filename(1000))

                else:
                    for i in range(3):
                        # Alternate between short and long durations for the scale tones
                        if i % 2 != 0:
                            duration = Durations.very_short
                        else:
                            duration = Durations.short

                        for interval in obj.get_intervals() + list(
                            reversed(obj.get_intervals())
                        ):
                            sound_files.append(
                                Midi.get_filename(
                                    octave=self.octave,
                                    key=self.key,
                                    duration=duration,
                                    interval=interval,
                                )
                            )

                        sound_files.append(Audio.get_filename(1000))

                    sound_files.append(
                        Narration.get_filename(Phrases.that_was.value)
                    )
                    sound_files.append(Narration.get_filename(self.key))
                    sound_files.append(Narration.get_filename(obj))
                    sound_files.append(Audio.get_filename(1000))

        for i in range(len(sound_files)):
            sound_files[i] = os.path.join(EarTraining.base_dir, sound_files[i])

        if not os.path.exists(EarTraining.rendered_dir):
            os.makedirs(EarTraining.rendered_dir)
            logging.debug(f"Created directory {EarTraining.rendered_dir}")

        output_file = EarTraining.get_output_filename(
            self.exercise_type.get_name(), self.key.get_name()
        )
        Audio.splice(
            input_files=sound_files,
            output_file=output_file,
            overwrite=True,
        )
        logging.info(f"Generated sound at {output_file}")

        return output_file

    @staticmethod
    def get_output_filename(exercise_type: str, key: str) -> str:
        return os.path.join(
            EarTraining.rendered_dir,
            f"et_{datetime.now().strftime('%Y%m%d_%H%M%S')}_{exercise_type}_{key}.mp3",
        )
