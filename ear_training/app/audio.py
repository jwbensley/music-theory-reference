from pydub import AudioSegment  # type: ignore
import logging


class Audio:
    """
    A class for handling audio file conversions.
    """

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
