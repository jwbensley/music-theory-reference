#!/usr/bin/env python3

import argparse
import logging
import random
from gtts import gTTS
from pathlib import Path
import os
from enum import Enum


class KEYS(Enum):
    A_FLAT = "Ab"
    A = "A"
    A_SHARP = "A#"
    B_FLAT = "Bb"
    B = "B"
    C = "C"
    C_SHARP = "C#"
    D_FLAT = "Db"
    D = "D"
    D_SHARP = "D#"
    E_FLAT = "Eb"
    E = "E"
    F = "F"
    F_SHARP = "F#"
    G_FLAT = "Gb"
    G = "G"
    G_SHARP = "G#"


class KEY_NAMES(Enum):
    A_FLAT = "Ay flat"
    A = "A"
    A_SHARP = "Ay sharp"
    B_FLAT = "Bee flat"
    B = "Bee"
    C = "Cee"
    C_SHARP = "Cee sharp"
    D_FLAT = "Dee flat"
    D = "Dee"
    D_SHARP = "Dee sharp"
    E_FLAT = "Ee flat"
    E = "Ee"
    F = "Ef"
    F_SHARP = "Ef sharp"
    G_FLAT = "Gee flat"
    G = "Gee"
    G_SHARP = "Gee sharp"


class SOUND_TYPES(Enum):
    CHORDS = "chords"
    INTERVALS = "intervals"
    SCALES = "scales"


class CHORD_TYPES(Enum):
    MAJOR = "major"
    MINOR = "minor"
    DIMINISHED = "diminished"
    AUGMENTED = "augmented"
    FIFTH = "fifth"
    SEVENTH = "seventh"
    NINTH = "ninth"


class INTERVAL_TYPES(Enum):
    UNISON = "unison"
    MINOR_SECOND = "minor second"
    MAJOR_SECOND = "major second"
    MINOR_THIRD = "minor third"
    MAJOR_THIRD = "major third"
    PERFECT_FOURTH = "perfect fourth"
    TRITONE = "tritone"
    PERFECT_FIFTH = "perfect fifth"
    MINOR_SIXTH = "minor sixth"
    MAJOR_SIXTH = "major sixth"
    MINOR_SEVENTH = "minor seventh"
    MAJOR_SEVENTH = "major seventh"
    OCTAVE = "octave"


class SCALE_TYPES(Enum):
    MAJOR = "major"
    MINOR = "minor"
    HARMONIC_MINOR = "harmonic minor"
    MELODIC_MINOR = "melodic minor"
    PENTATONIC_MAJOR = "pentatonic major"
    PENTATONIC_MINOR = "pentatonic minor"


cli_args: argparse.Namespace


def generate_narration() -> None:
    out_dir = os.path.join(Path(__file__).parent, "narration")
    os.makedirs(out_dir, exist_ok=True)

    def _sanitize(name: str) -> str:
        x = name.lower()
        if x == "b":
            return x
        elif x.endswith("#"):
            x = x.replace("#", " sharp")
        elif x.endswith("b"):
            x = x.removesuffix("b") + " flat"
        return x

    def _generate_phrase(phrase: str, fname: str) -> None:
        dest = os.path.join(out_dir, f"{fname}.mp3")
        if os.path.exists(dest):
            logging.debug(
                f"Skipping existing narration file {dest} for phrase '{phrase}'"
            )
            return
        try:
            tts = gTTS(text=phrase, lang="en")
            tts.save(dest)
            logging.info(f"Generated narration: {dest}")
        except Exception as e:
            logging.error(f"Failed to generate narration for '{phrase}': {e}")

    for phrase in (
        [e.value for e in SOUND_TYPES]
        + [e.value for e in CHORD_TYPES]
        + [e.value for e in INTERVAL_TYPES]
        + [e.value for e in SCALE_TYPES]
    ):
        fname = _sanitize(phrase)
        _generate_phrase(phrase, fname)

    for phrase in KEY_NAMES:
        fname = _sanitize(KEYS[phrase.name].value)
        _generate_phrase(phrase.value, fname)


def setup_logging(debug: bool) -> None:
    if debug:
        logging.basicConfig(level=logging.DEBUG)
    else:
        logging.basicConfig(level=logging.INFO)


def set_key(cli_args: argparse.Namespace) -> None:
    # If no key is chosen, choose one at random
    if not cli_args.key:
        cli_args.key = random.choice(list(KEYS))
        logging.debug(f"No key specified, using {cli_args.key}")


def set_sound_type(cli_args: argparse.Namespace) -> None:
    # If no sound_type is chosen, choose one at random
    if not cli_args.sound_type:
        cli_args.sound_type = random.choice(list(SOUND_TYPES))
        logging.debug(f"No sound type specified, using {cli_args.sound_type}")


def set_sound_choices(cli_args: argparse.Namespace) -> None:
    if cli_args.sound_type == SOUND_TYPES.CHORDS:
        if not cli_args.chord_type:
            cli_args.chord_type = random.sample(
                [e for e in CHORD_TYPES], k=random.randint(1, len(CHORD_TYPES))
            )
            logging.debug(f"No chord type specified, using {cli_args.chord_type}")
    elif cli_args.sound_type == SOUND_TYPES.INTERVALS:
        if not cli_args.interval_type:
            cli_args.interval_type = random.sample(
                [e for e in INTERVAL_TYPES], k=random.randint(1, len(INTERVAL_TYPES))
            )
            logging.debug(f"No interval type specified, using {cli_args.interval_type}")
    elif cli_args.sound_type == SOUND_TYPES.SCALES:
        if not cli_args.scale_type:
            cli_args.scale_type = random.sample(
                [e for e in SCALE_TYPES], k=random.randint(1, len(SCALE_TYPES))
            )
            logging.debug(f"No scale type specified, using {cli_args.scale_type}")


def parse_cli_args() -> None:
    class CustomHelpFormatter(argparse.HelpFormatter):
        """
        Override the default help formatter to avoid repeating choices in the help message,
        due to the use of short and long CLI flags.
        """

        def _format_action_invocation(self, action: argparse.Action) -> str:
            choices = ""
            if action.choices:
                choices = ", ".join(action.choices)
            return ", ".join(action.option_strings) + ":\t" + choices

    parser = argparse.ArgumentParser(
        description="Generate audio files for ear training",
        formatter_class=CustomHelpFormatter,
    )
    parser.add_argument(
        "--debug",
        "-d",
        help="Run with debug level logging.",
        default=False,
        action="store_true",
        required=False,
    )
    parser.add_argument(
        "--key",
        "-k",
        type=KEYS,
        choices=list(KEYS),
        required=False,
        help="The key of the generated sounds. If not specified, a random key will be chosen.",
    )
    parser.add_argument(
        "--sound-type",
        "-s",
        type=SOUND_TYPES,
        choices=list(SOUND_TYPES),
        required=False,
        help="The type of sound to generate",
    )
    sound_choices = parser.add_argument_group(
        "Sound Type Choices",
        description="Select multiple options for the sound type you want to generate. If no options are selected, a random selection will be chosen.",
    )
    sound_choices.add_argument(
        "--chord-type",
        type=CHORD_TYPES,
        choices=list(CHORD_TYPES),
        required=False,
        help="The types of chords to generate",
        nargs="+",
    )
    sound_choices.add_argument(
        "--interval-type",
        type=INTERVAL_TYPES,
        choices=list(INTERVAL_TYPES),
        required=False,
        help="The types of intervals to generate",
        nargs="+",
    )
    sound_choices.add_argument(
        "--scale-type",
        type=SCALE_TYPES,
        choices=list(SCALE_TYPES),
        required=False,
        help="The types of scales to generate",
        nargs="+",
    )

    global cli_args
    cli_args = parser.parse_args()


def main() -> None:
    parse_cli_args()
    setup_logging(cli_args.debug)
    set_sound_type(cli_args)
    set_sound_choices(cli_args)
    set_key(cli_args)
    print(cli_args)
    generate_narration()


if __name__ == "__main__":
    main()
