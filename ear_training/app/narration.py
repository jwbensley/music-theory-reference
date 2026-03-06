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
        return os.path.join(Narration.get_sub_dir(), obj.get_filename())

    @staticmethod
    def generate_all_narrations(out_dir: str) -> None:
        """
        Generate narration audio files for all sound types, chords, intervals, scales, and keys.
        """
        out_dir = os.path.join(out_dir, Narration.sub_dir)

        if not os.path.exists(out_dir):
            os.makedirs(out_dir)
            logging.debug(f"Created directory {out_dir}")

        def _generate_audio(phrase: str, fname: str) -> None:
            dest = os.path.join(out_dir, fname)
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
                logging.error(
                    f"Failed to generate narration for '{phrase}': {e}"
                )
                raise e

        for obj in (
            [e.value for e in SoundTypes]
            + [e.value for e in Chords]
            + [e.value for e in Intervals]
            + [e.value for e in Scales]
            + [e.value for e in Keys]
        ):
            _generate_audio(obj.get_pronunciation(), obj.get_filename())

        for phrase in Phrases:
            _generate_audio(
                phrase.value.get_pronunciation(), phrase.value.get_filename()
            )
