import os
from midiutil import MIDIFile
from midi2audio import FluidSynth
from app.audio import Audio
from app.sounds import (
    Chord,
    Interval,
    Key,
    Keys,
    Octave,
    Octaves,
    Chords,
    Scale,
)
import logging


class Midi:

    sub_dir = "midi"

    @staticmethod
    def get_filename(
        octave: Octave, key: Key, obj: Chord | Interval | Scale | None = None
    ) -> str:

        filename = Midi.get_sub_dir()

        if obj:
            filename = os.path.join(
                filename,
                (
                    octave.get_name()
                    + "_"
                    + key.get_name()
                    + "_"
                    + obj.get_name()
                ),
            )
        else:
            filename = os.path.join(
                filename,
                (octave.get_name() + "_" + key.get_name()),
            )

        filename += ".mp3"
        return filename

    @staticmethod
    def get_sub_dir() -> str:
        return Midi.sub_dir

    @staticmethod
    def _new_midi_file(track: int) -> MIDIFile:
        """
        Creates a new MIDI file with one track and sets the tempo to the specified value.
        :return: A MIDIFile object with one track and tempo set.
        """
        midi = MIDIFile(1)
        tempo = 120  # Tempo in BPM
        time = 0  # In beats
        midi.addTempo(track=track, time=time, tempo=tempo)  # type: ignore
        return midi

    @staticmethod
    def _add_note(
        midi: MIDIFile, notes: list[int], time: int, track: int, duration: int
    ) -> None:
        """
        Adds a note to the MIDI file.
        :param midi: The MIDIFile object to add the note to.
        :param notes: A list of MIDI note numbers played together.
        :param time: The start time for the notes in beats.
        :param track: The track number to add the notes to.
        :param duration: The duration of the notes in beats.
        """
        channel = 0
        volume = 127  # 0-127, as per the MIDI standard
        for note in notes:
            midi.addNote(  # type: ignore
                track=track,
                channel=channel,
                pitch=note,
                time=time,
                duration=duration,
                volume=volume,
            )  # Track 0, Channel 0, Note, Start Time, Duration, Velocity

    @staticmethod
    def _write_midi(midi: MIDIFile, filename: str) -> None:
        """
        Writes a MIDIFile object to disk.
        :param midi: The MIDIFile object to write.
        :param filename: The name of the output MIDI file.
        """
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
            logging.debug(f"Created directory {os.path.dirname(filename)}")

        with open(filename, "wb") as output_file:
            midi.writeFile(output_file)  # type: ignore
        logging.debug(f"Wrote to {filename}")

    @staticmethod
    def _midi_to_wav(filename: str) -> None:
        """
        Renders a MIDI file to an audio file using FluidSynth.
        :param filename: The name of the MIDI file to render.
        """
        fs = FluidSynth()
        fs.midi_to_audio(midi_file=filename, audio_file=filename.replace(".mid", ".wav"))  # type: ignore
        logging.debug(f"Wrote to {filename.replace('.mid', '.wav')}")

    @staticmethod
    def _generate_midi_file(
        notes: list[int], time: int, filename: str, out_dir: str
    ) -> None:
        """
        Generates a MIDI file with the given notes at the specified time.
        Write the file to disk as mp3.
        :param notes: A list of MIDI note numbers to add as a chord.
        :param time: The start time for the notes in beats.
        :param filename: The name of the output file (with extension).
        :param out_dir: The directory where the output file will be saved.
        """
        if os.path.exists(os.path.join(out_dir, filename)):
            logging.debug(f"{filename} already exists, skipping generation.")
            return

        track = 0
        midi = Midi._new_midi_file(track)
        Midi._add_note(midi, notes, time=time, track=track, duration=4)
        Midi._write_midi(
            midi, os.path.join(out_dir, f"{filename.replace('.mp3', '.mid')}")
        )
        Midi._midi_to_wav(
            os.path.join(out_dir, f"{filename.replace('.mp3', '.mid')}")
        )
        Audio.wav_to_mp3(
            os.path.join(out_dir, f"{filename.replace('.mp3', '.wav')}"),
            normalise=-25.0,
        )
        os.unlink(os.path.join(out_dir, f"{filename.replace('.mp3', '.mid')}"))
        os.unlink(os.path.join(out_dir, f"{filename.replace('.mp3', '.wav')}"))

    @staticmethod
    def generate_all_sounds(out_dir: str) -> None:
        """
        Generates a MIDI file for every single note and chord on a standard piano.
        Write each file to disk as mp3 with the name of the note/chord.
        """

        for octave in Octaves:
            if octave.value.get_name() != "4":
                continue

            octave_midi = octave.value.get_midi_start()

            for key in Keys:
                # Generate a MIDI file for a single note
                note_filename = Midi.get_filename(octave.value, key.value)
                note_midi = octave_midi + key.value.get_midi_offset()
                Midi._generate_midi_file(
                    [note_midi],
                    time=0,
                    filename=note_filename,
                    out_dir=out_dir,
                )

                # Generate a MIDI file for every chord type at each root note
                for chord in Chords:
                    chord_filename = Midi.get_filename(
                        octave.value, key.value, chord.value
                    )
                    chord_midi: list[int] = []
                    for interval in chord.value.get_intervals():
                        chord_midi.append(
                            octave_midi + interval.get_semitones()
                        )

                    Midi._generate_midi_file(
                        chord_midi,
                        time=0,
                        filename=chord_filename,
                        out_dir=out_dir,
                    )
