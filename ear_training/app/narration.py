import logging
from gtts import gTTS
import os

from app.sounds import (
    Chord,
    Interval,
    Key,
    Phrase,
    Scale,
    SoundTypes,
    Chords,
    Intervals,
    Scales,
    Keys,
    SoundType,
    Phrases,
)
from app.audio import Audio


class Narration:
    """
    A class for generating speech narration audio files
    """

    sub_dir = "narration"

    @staticmethod
    def get_sub_dir() -> str:
        return Narration.sub_dir

    @staticmethod
    def get_filename(
        obj: Chord | Key | Interval | Scale | SoundType | Phrase,
    ) -> str:
        return os.path.join(
            Narration.get_sub_dir(), f"{obj.get_name().replace(' ', '_')}.wav"
        )

    @staticmethod
    def generate_audio(phrase: str, filename: str, out_dir: str) -> None:
        """
        Generate an audio file for the given phrase using gTTS.
        If the file already exists, it will be skipped.
        :param phrase: The text to convert to speech
        :param filename: The name of the output audio file (with file extension)
        :param out_dir: The directory where the output file will be saved
        """

        filename = os.path.join(out_dir, filename)

        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
            logging.debug(f"Created directory {os.path.dirname(filename)}")

        if os.path.exists(filename):
            logging.debug(
                f"Skipping existing narration file {filename} for phrase '{phrase}'"
            )
            return
        try:
            mp3_filename = filename.replace(".wav", ".mp3")
            tts = gTTS(text=phrase, lang="en")
            tts.save(mp3_filename)  # type: ignore
            Audio.mp3_to_wav(mp3_filename)
            os.unlink(mp3_filename)
            logging.info(
                f"Generated narration: {filename} for phrase '{phrase}'"
            )
        except Exception as e:
            logging.error(f"Failed to generate narration for '{phrase}': {e}")
            raise e

    @staticmethod
    def generate_all_narrations(out_dir: str) -> None:
        """
        Generate narration audio files for all sound types, chords, intervals, scales, and keys.
        """

        for obj in (
            [e.value for e in SoundTypes]
            + [e.value for e in Chords]
            + [e.value for e in Intervals]
            + [e.value for e in Scales]
            + [e.value for e in Keys]
        ):
            Narration.generate_audio(
                obj.get_pronunciation(),
                Narration.get_filename(obj),
                out_dir=out_dir,
            )

        for phrase in Phrases:
            Narration.generate_audio(
                phrase.value.get_pronunciation(),
                Narration.get_filename(phrase.value),
                out_dir=out_dir,
            )
