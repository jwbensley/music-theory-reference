#!/usr/bin/env python3

import argparse
import logging
from app.sounds import Chords, Intervals, Octaves, Scales, SoundTypes, Keys
from app.app import EarTraining

cli_args: argparse.Namespace


def parse_cli_args() -> None:
    class CustomFormatter(argparse.HelpFormatter):
        """
        This custom formatter class removes the duplicated choices from the help text for each argument.
        """

        def _format_action(self, action: argparse.Action) -> str:
            if action.choices:
                text = f"  {action.option_strings[0]}"

                if len(action.option_strings[0]) <= 5:
                    text += "\t\t"
                elif len(action.option_strings[0]) <= 14:
                    text += "\t"
                text += (
                    f"\t{action.help}:\n\t\t\t{[c for c in action.choices]}\n"
                )
                return text
            else:
                return super()._format_action(action)

    parser = argparse.ArgumentParser(
        description="Generate audio files for ear training",
        formatter_class=CustomFormatter,
        usage="%(prog)s [options]",
    )
    parser.add_argument(
        "--debug",
        help="Run with debug level logging.",
        default=False,
        action="store_true",
        required=False,
    )
    parser.add_argument(
        "--generate-audio",
        help="Generate audio files for all sound types, chords, intervals, scales, and keys. "
        "This will be skipped if the files already exist.",
        default=False,
        action="store_true",
        required=False,
    )
    key_scale_group = parser.add_argument_group(
        title="Key/Scale Options",
        description="Specify the key or scale for the generated sounds.",
    )
    key_scale_group.add_argument(
        "--octave",
        type=str,
        choices=[o.value.get_name() for o in Octaves],
        required=False,
        help="The octave of the chosen key. If not specified, a random octave will be chosen",
    )
    key_scale_group.add_argument(
        "--key",
        type=str,
        choices=[k.value.get_name() for k in Keys],
        required=False,
        help="The key of the generated sounds. If not specified, a random key will be chosen",
    )
    key_scale_group.add_argument(
        "--sound-type",
        type=str,
        choices=[s.value.get_name() for s in SoundTypes],
        required=False,
        help="The type of sound to generate. If not specified, a random sound type will be chosen",
    )
    sound_type_choices = parser.add_argument_group(
        title="Sound Type Choices",
        description="Select multiple relevant to the sound type you want to generate. "
        "If no options are selected, a random selection will be chosen.",
    )
    sound_type_choices_exclusive = (
        sound_type_choices.add_mutually_exclusive_group()
    )
    sound_type_choices_exclusive.add_argument(
        "--chord-types",
        type=str,
        choices=[c.value.get_name() for c in Chords],
        required=False,
        help="The type(s) of chords to generate",
        nargs="+",
    )
    sound_type_choices_exclusive.add_argument(
        "--interval-types",
        type=str,
        choices=[i.value.get_name() for i in Intervals],
        required=False,
        help="The type(s) of intervals to generate",
        nargs="+",
    )
    sound_type_choices_exclusive.add_argument(
        "--scale-types",
        type=str,
        choices=[s.value.get_name() for s in Scales],
        required=False,
        help="The type(s) of scales to generate",
        nargs="+",
    )

    global cli_args
    cli_args = parser.parse_args()


def main() -> None:
    parse_cli_args()

    if cli_args.generate_audio:
        EarTraining.generate_audio()

    if cli_args.debug:
        logging.basicConfig(level=logging.DEBUG)
        logging.debug("Debug logging started")
    else:
        logging.basicConfig(level=logging.INFO)
        logging.info("Info logging started")

    if cli_args.sound_type == SoundTypes.chords.value.get_name():
        sound_type_choices = cli_args.chord_types
    elif cli_args.sound_type == SoundTypes.intervals.value.get_name():
        sound_type_choices = cli_args.interval_types
    elif cli_args.sound_type == SoundTypes.scales.value.get_name():
        sound_type_choices = cli_args.scale_types
    else:
        sound_type_choices = []

    et = EarTraining.from_args(
        cli_args.octave,
        cli_args.key,
        cli_args.sound_type,
        sound_type_choices,
    )

    et.generate_sound()


if __name__ == "__main__":
    main()
