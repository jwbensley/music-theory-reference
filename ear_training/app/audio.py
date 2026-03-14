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
            Audio.get_sub_dir(), f"silence_{duration_ms}ms.wav"
        )

    @staticmethod
    def generate_silence(duration_ms: int, output_file: str) -> None:
        """
        Generates a silent file of the specified duration.
        :param duration_ms: The duration of the silence in milliseconds.
        :param output_file: The name of the output file (with file extension)
        """

        if os.path.exists(output_file):
            logging.debug(f"Skipping existing file {output_file}")
            return

        silence = AudioSegment.silent(duration=duration_ms)
        silence.export(output_file, format="wav")
        logging.debug(f"Wrote to {output_file}")

    @staticmethod
    def generate_all_silences(out_dir: str) -> None:
        """
        Generate a list of silent files with durations ranging from 250ms to 2000ms in 250ms increments.
        :param out_dir: The directory where the output files will be saved.
        """

        if not os.path.exists(out_dir):
            os.makedirs(out_dir)
            logging.debug(f"Created directory {out_dir}")

        for i in range(250, 3001, 250):
            filename = os.path.join(out_dir, Audio.get_filename(i))
            Audio.generate_silence(duration_ms=i, output_file=filename)

    @staticmethod
    def splice(
        input_files: list[str], output_file: str, overwrite: bool = False
    ) -> None:
        """
        Splices multiple wav files together into a single MP3 file.
        :param input_files: A list of input WAV file paths to be spliced together.
        :param output_file: The name of the output MP3 file (with file extension).
        :param overwrite: Whether to overwrite the output file if it already exists.
        """
        if os.path.exists(output_file):
            if not overwrite:
                logging.info(f"Skipping existing file {output_file}")
                return

        logging.debug(f"Splicing files {input_files} into {output_file}")

        combined = AudioSegment.empty()
        for file in input_files:
            audio = AudioSegment.from_wav(file)
            combined += audio

        combined.export(output_file, format="mp3")
        logging.info(f"Wrote to {output_file}")

    @staticmethod
    def mp3_to_wav(filename: str) -> None:
        """
        Converts an MP3 file to a WAV file.
        :param filename: The name of the input MP3 file (should end with .mp3)
        """
        audio = AudioSegment.from_mp3(filename)
        outfile = filename.replace(".mp3", ".wav")
        audio.export(outfile, format="wav")
        logging.debug(f"Wrote to {outfile}")

    @staticmethod
    def wav_to_mp3(filename: str) -> None:
        """
        Converts a WAV file to MP3 format.
        :param filename: The name of the input WAV file (should end with .wav).
        """
        audio: AudioSegment = AudioSegment.from_wav(filename)  # type: ignore
        mp3_filename = filename.replace(".wav", ".mp3")
        audio.export(mp3_filename, format="mp3")  # type: ignore
        logging.debug(f"Wrote to {mp3_filename}")

    @staticmethod
    def normalise_wav(filename: str, target_dBFS: float) -> None:
        """
        Normalises the volume of a WAV file to a target dBFS level.
        :param filename: The name of the input WAV file (should end with .wav).
        :param target_dBFS: The target dBFS level to normalise to (e.g. -20.0).
        """
        audio = AudioSegment.from_wav(filename)  # type: ignore
        change_in_dBFS = target_dBFS - audio.dBFS
        normalizedsound = audio.apply_gain(change_in_dBFS)
        normalizedsound.export(filename, format="wav")  # type: ignore
        logging.debug(f"Normalised {filename} to {target_dBFS} dBFS")

    @staticmethod
    def trim_trailing_silence(filename: str) -> None:
        """
        Trims trailing silence from a WAV file.
        :param filename: The name of the input WAV file (should end with .wav).
        """
        audio = AudioSegment.from_wav(filename)  # type: ignore
        trimmed_audio = audio.strip_silence(
            silence_len=100, silence_thresh=-60
        )
        trimmed_audio.export(filename, format="wav")  # type: ignore
        logging.debug(f"Trimmed trailing silence from {filename}")
