#!/usr/bin/env python3

import os
from midiutil import MIDIFile
from midi2audio import FluidSynth
from audio import Audio


def new_midi_file(track: int) -> MIDIFile:
    """
    Creates a new MIDI file with one track and sets the tempo to the specified value.
    :return: A MIDIFile object with one track and tempo set.
    """
    midi = MIDIFile(1)
    tempo = 120  # Tempo in BPM
    time = 0  # In beats
    midi.addTempo(track=track, time=time, tempo=tempo)  # type: ignore
    return midi


def add_note(midi: MIDIFile, notes: list[int], time: int, track: int) -> None:
    """
    Adds a note to the MIDI file.
    :param midi: The MIDIFile object to add the note to.
    :param notes: A list of MIDI note numbers to add as a chord.
    :param time: The start time for the notes in beats.
    :param track: The track number to add the notes to.
    """
    channel = 0
    duration = 1  # In beats
    volume = 100  # 0-127, as per the MIDI standard
    for note in notes:
        midi.addNote(  # type: ignore
            track=track,
            channel=channel,
            pitch=note,
            time=time,
            duration=duration,
            volume=volume,
        )  # Track 0, Channel 0, Note, Start Time, Duration, Velocity


def generate_midi_file(notes: list[int], time: int, output_file: str) -> None:
    """
    Generates a MIDI file with the given notes at the specified time.
    Write the file to disk as mp3.
    :param notes: A list of MIDI note numbers to add as a chord.
    :param time: The start time for the notes in beats.
    :param output_file: The name of the output file (without extension).
    """
    track = 0
    midi = new_midi_file(track)
    add_note(midi, notes, time=time, track=track)
    write_midi(midi, f"./midi/{output_file}.mid")
    midi_to_wav(f"./midi/{output_file}.mid")
    Audio.wav_to_mp3(f"./midi/{output_file}.wav")
    os.unlink(f"./midi/{output_file}.mid")
    os.unlink(f"./midi/{output_file}.wav")


def generate_scales() -> None:
    """
    Generates a MIDI file for each common scale on a standard piano.
    Write each file to disk as mp3 with the name of the scale and root note.
    """

    # Intervals of common scale types
    scale_intervals: list[tuple[str, list[int]]] = [
        ("Major", [0, 2, 4, 5, 7, 9, 11]),
        ("Natural Minor", [0, 2, 3, 5, 7, 8, 10]),
        ("Harmonic Minor", [0, 2, 3, 5, 7, 8, 11]),
        ("Melodic Minor", [0, 2, 3, 5, 7, 9, 11]),
        ("Pentatonic Major", [0, 2, 4, 7, 9]),
        ("Pentatonic Minor", [0, 3, 5, 7, 10]),
    ]

    # Midi notes for A to G in the 4th octave (C4 is 60)
    root_notes: list[tuple[str, int]] = [
        ("A", 57),
        ("B", 59),
        ("C", 60),
        ("D", 62),
        ("E", 64),
        ("F", 65),
        ("G", 67),
    ]

    # Generate scales for each root note and scale type
    for root_name, root_note in root_notes:
        for scale_name, intervals in scale_intervals:
            scale_notes = [root_note + interval for interval in intervals]
            generate_midi_file(
                scale_notes,
                time=0,
                output_file=f"{root_name}_{scale_name}",
            )


def generate_chords() -> None:
    """
    Generates a MIDI file for each common chord on a standard piano.
    Write each file to disk as mp3 with the name of the chord and root note.
    """

    # Intervals of common chord types
    chord_intervals: list[tuple[str, list[int]]] = [
        ("Major", [0, 4, 7]),
        ("Minor", [0, 3, 7]),
        ("Augmented", [0, 4, 8]),
        ("Diminished", [0, 3, 6]),
        ("Major 7th", [0, 4, 7, 11]),
        ("Minor 7th", [0, 3, 7, 10]),
        ("Dominant 7th", [0, 4, 7, 10]),
    ]

    # Midi notes for A to G in the 4th octave (C4 is 60)
    root_notes: list[tuple[str, int]] = [
        ("A", 57),
        ("B", 59),
        ("C", 60),
        ("D", 62),
        ("E", 64),
        ("F", 65),
        ("G", 67),
    ]

    # Generate chords for each root note and chord type
    for root_name, root_note in root_notes:
        for chord_name, intervals in chord_intervals:
            chord_notes = [root_note + interval for interval in intervals]
            generate_midi_file(
                chord_notes,
                time=0,
                output_file=f"{root_name}_{chord_name}",
            )


def generate_notes() -> None:
    """
    Generates a MIDI file for every single note on a standard piano.
    Write each file to disk as mp3 with the name of the note.
    """

    # Add every note on an 88 key piano, from A0 (MIDI note 21) to C8 (MIDI note 108)
    notes: list[tuple[str, int]] = [
        ("A", 21),
        ("A#", 22),
        ("B", 23),
        ("C", 24),  # C1
        ("C#", 25),
        ("D", 26),
        ("D#", 27),
        ("E", 28),
        ("F", 29),
        ("F#", 30),
        ("G", 31),
        ("G#", 32),
        ("A", 33),
        ("A#", 34),
        ("B", 35),
        ("C", 36),  # C2
        ("C#", 37),
        ("D", 38),
        ("D#", 39),
        ("E", 40),
        ("F", 41),
        ("F#", 42),
        ("G", 43),
        ("G#", 44),
        ("A", 45),
        ("A#", 46),
        ("B", 47),
        ("C", 48),  # C3
        ("C#", 49),
        ("D", 50),
        ("D#", 51),
        ("E", 52),
        ("F", 53),
        ("F#", 54),
        ("G", 55),
        ("G#", 56),
        ("A", 57),
        ("A#", 58),
        ("B", 59),
        ("C", 60),  # C4 (Middle C)
        ("C#", 61),
        ("D", 62),
        ("D#", 63),
        ("E", 64),
        ("F", 65),
        ("F#", 66),
        ("G", 67),
        ("G#", 68),
        ("A", 69),
        ("A#", 70),
        ("B", 71),
        ("C", 72),  # C5
        ("C#", 73),
        ("D", 74),
        ("D#", 75),
        ("E", 76),
        ("F", 77),
        ("F#", 78),
        ("G", 79),
        ("G#", 80),
        ("A", 81),
        ("A#", 82),
        ("B", 83),
        ("C", 84),  # C6
        ("C#", 85),
        ("D", 86),
        ("D#", 87),
        ("E", 88),
        ("F", 89),
        ("F#", 90),
        ("G", 91),
        ("G#", 92),
        ("A", 93),
        ("A#", 94),
        ("B", 95),
        ("C", 96),  # C7
        ("C#", 97),
        ("D", 98),
        ("D#", 99),
        ("E", 100),
        ("F", 101),
        ("F#", 102),
        ("G", 103),
        ("G#", 104),
        ("A", 105),
        ("A#", 106),
        ("B", 107),
        ("C", 108),  # C8
    ]

    for note_name, note in notes:
        generate_midi_file(
            [note],
            time=0,
            output_file=f"{note_name}",
        )


def midi_to_wav(filename: str) -> None:
    """
    Renders a MIDI file to an audio file using FluidSynth.
    :param filename: The name of the MIDI file to render.
    """
    fs = FluidSynth()
    fs.midi_to_audio(midi_file=filename, audio_file=filename.replace(".mid", ".wav"))  # type: ignore
    print(f"Wrote to {filename.replace('.mid', '.wav')}")


def write_midi(midi: MIDIFile, filename: str) -> None:
    """
    Writes a MIDIFile object to disk.
    :param midi: The MIDIFile object to write.
    :param filename: The name of the output MIDI file.
    """
    if not os.path.exists(os.path.dirname(filename)):
        os.makedirs(os.path.dirname(filename))
    with open(filename, "wb") as output_file:
        midi.writeFile(output_file)  # type: ignore
    print(f"Wrote to {filename}")


if __name__ == "__main__":
    # generate_notes()
    # generate_chords()
    generate_scales()
