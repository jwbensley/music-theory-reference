#!/usr/bin/env python3

from pydub import AudioSegment
import os


def generate_silence(duration_ms: int, output_file: str) -> None:
    """
    Generates a silent MP3 file of the specified duration.
    :param duration_ms: The duration of the silence in milliseconds.
    :param output_file: The name of the output MP3 file.
    """

    if os.path.exists(output_file):
        print(f"Skipping existing file {output_file}")
        return

    AudioSegment.silent(duration=duration_ms).export(output_file, format="mp3")
    print(f"Wrote to {output_file}")


def generate_silences(out_dir: str) -> None:
    """
    Generates silent MP3 files for all sound types, chord types, interval types, scale types, and key names.
    :param out_dir: The directory where the output MP3 files will be saved.
    """
    if not os.path.exists(out_dir):
        os.makedirs(out_dir)

    for duration in [250, 500, 750, 1000, 1250, 1500, 1750, 2000]:
        filename = os.path.join(out_dir, f"silence_{duration}ms.mp3")
        generate_silence(duration_ms=duration, output_file=filename)


def splice(input_files: list[str], output_file: str) -> None:
    """
    Splices multiple MP3 files together into a single MP3 file.
    :param input_files: A list of input MP3 file paths to be spliced together.
    :param output_file: The name of the output MP3 file.
    """
    if os.path.exists(output_file):
        print(f"Skipping existing file {output_file}")
        return

    combined = AudioSegment.empty()
    for file in input_files:
        audio = AudioSegment.from_mp3(file)
        combined += audio

    combined.export(output_file, format="mp3")
    print(f"Wrote to {output_file}")


def main() -> None:
    out_dir = "silences"
    generate_silences(out_dir)

    splice(
        [
            "narration/scales.mp3",
            "silences/silence_500ms.mp3",
            "narration/c sharp.mp3",
        ],
        os.path.join(out_dir, "combined.mp3"),
    )


if __name__ == "__main__":
    main()
