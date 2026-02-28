import logging
from gtts import gTTS
import os

from app.sounds import SoundTypes, Chords, Intervals, Scales, Keys


class Narration:
    """
    A class for generating speech narration audio files
    """

    @staticmethod
    def generate_narration(out_dir: str) -> None:
        """
        Generate narration audio files for all sound types, chords, intervals, scales, and keys.
        """
        os.makedirs(out_dir, exist_ok=True)

        def _generate_audio(phrase: str, fname: str) -> None:
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
            _generate_audio(obj.get_pronunciation(), obj.get_sanitized_name())
