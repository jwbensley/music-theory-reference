import os

from pydub import AudioSegment  # type: ignore
import logging


class Audio:
    sub_dir = "silences"

    @staticmethod
    def get_sub_dir() -> str:
        return Audio.sub_dir

    @staticmethod
    def get_filename(duration_ms: int) -> str:
        return os.path.join(
            Audio.get_sub_dir(), f"silence_{duration_ms}ms.mp3"
        )

    @staticmethod
    def generate_silence(duration_ms: int, output_file: str) -> None:
        """
        Generates a silent MP3 file of the specified duration.
        :param duration_ms: The duration of the silence in milliseconds.
        :param output_file: The name of the output MP3 file.
        """

        if os.path.exists(output_file):
            logging.debug(f"Skipping existing file {output_file}")
            return

        AudioSegment.silent(duration=duration_ms).export(
            output_file, format="mp3"
        )
        logging.debug(f"Wrote to {output_file}")

    @staticmethod
    def generate_all_silences(out_dir: str) -> None:
        """
        Generate a list of silent MP3 files with durations ranging from 250ms to 2000ms in 250ms increments.
        :param out_dir: The directory where the output MP3 files will be saved.
        """

        if not os.path.exists(out_dir):
            os.makedirs(out_dir)
            logging.debug(f"Created directory {out_dir}")

        for i in range(250, 3001, 250):
            filename = os.path.join(out_dir, Audio.get_filename(i))
            Audio.generate_silence(duration_ms=i, output_file=filename)

    @staticmethod
    def splice(input_files: list[str], output_file: str) -> None:
        """
        Splices multiple MP3 files together into a single MP3 file.
        :param input_files: A list of input MP3 file paths to be spliced together.
        :param output_file: The name of the output MP3 file.
        """
        if os.path.exists(output_file):
            logging.info(f"Skipping existing file {output_file}")
            return

        combined = AudioSegment.empty()
        for file in input_files:
            audio = AudioSegment.from_mp3(file)
            combined += audio

        combined.export(output_file, format="mp3")
        logging.info(f"Wrote to {output_file}")

    @staticmethod
    def wav_to_mp3(wav_filename: str) -> None:
        """
        Converts a WAV file to MP3 format.
        :param wav_filename: The name of the input WAV file (should end with .wav).
        """
        audio: AudioSegment = AudioSegment.from_wav(wav_filename)  # type: ignore
        mp3_filename = wav_filename.replace(".wav", ".mp3")
        audio.export(mp3_filename, format="mp3")  # type: ignore
        logging.debug(f"Wrote to {mp3_filename}")
