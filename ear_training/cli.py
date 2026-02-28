#!/usr/bin/env python3

import argparse
from app.sounds import Chords, Intervals, Scales, SoundTypes, Keys
from app.app import EarTraining

cli_args: argparse.Namespace


def parse_cli_args() -> None:
    parser = argparse.ArgumentParser(
        description="Generate audio files for ear training",
        usage="%(prog)s [options]",
    )
    parser.add_argument(
        "--debug",
        help="run with debug level logging.",
        default=False,
        action="store_true",
        required=False,
    )
    parser.add_argument(
        "--sound-type",
        type=str,
        choices=[s.value.get_name() for s in SoundTypes],
        required=False,
        help="the type of sound to generate",
    )
    parser.add_argument(
        "--key",
        type=str,
        choices=[k.value.get_name() for k in Keys],
        required=False,
        help="the key of the generated sounds. If not specified, a random key will be chosen.",
    )
    sound_type_choices = parser.add_argument_group(
        "Sound Type Choices",
        description="Select multiple relevant to the sound type you want to generate. "
        "If no options are selected, a random selection will be chosen.",
    )
    sound_type_choices.add_argument(
        "--chord-types",
        type=str,
        choices=[c.value.get_name() for c in Chords],
        required=False,
        help="the type(s) of chords to generate",
        nargs="+",
    )
    sound_type_choices.add_argument(
        "--interval-types",
        type=str,
        choices=[i.value.get_name() for i in Intervals],
        required=False,
        help="the type(s) of intervals to generate",
        nargs="+",
    )
    sound_type_choices.add_argument(
        "--scale-types",
        type=str,
        choices=[s.value.get_name() for s in Scales],
        required=False,
        help="the type(s) of scales to generate",
        nargs="+",
    )

    global cli_args
    cli_args = parser.parse_args()


def main() -> None:
    parse_cli_args()

    if cli_args.sound_type == SoundTypes.chords.value.get_name():
        sound_type_choices = cli_args.chord_types
    elif cli_args.sound_type == SoundTypes.intervals.value.get_name():
        sound_type_choices = cli_args.interval_types
    elif cli_args.sound_type == SoundTypes.scales.value.get_name():
        sound_type_choices = cli_args.scale_types
    else:
        sound_type_choices = []

    _ = EarTraining.from_args(
        cli_args.debug,
        cli_args.key,
        cli_args.sound_type,
        sound_type_choices,
    )


if __name__ == "__main__":
    main()
