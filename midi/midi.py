#!/usr/bin/env python3

from midiutil import MIDIFile


def generate_midi(filename: str, tempo: int = 120) -> None:
    """
    Generates a MIDI file with every single note on a standard piano.
    :param filename: The name of the output MIDI file.
    :param tempo: The tempo of the MIDI file in BPM (default is 120).
    """
    # Create a MIDI file with one track
    midi = MIDIFile(1)

    track = 0
    channel = 0
    time = 0  # In beats
    duration = 1  # In beats
    tempo = 60  # In BPM
    volume = 100  # 0-127, as per the MIDI standard

    # Set the tempo
    midi.addTempo(track=track, time=time, tempo=tempo)

    # Add every note from C0 (MIDI note 12) to G8 (MIDI note 127)
    for note in range(12, 128):
        midi.addNote(
            track=track,
            channel=channel,
            pitch=note,
            time=note - 12,
            duration=duration,
            volume=volume,
        )  # Track 0, Channel 0, Note, Start Time, Duration, Velocity

    # Add every kind of chord in the C major scale
    chords: list[list[int]] = [
        [0, 4, 7],  # C major
        [2, 5, 9],  # D minor
        [4, 7, 11],  # E minor
        [5, 9, 12],  # F major
        [7, 11, 14],  # G major
        [9, 12, 16],  # A minor
        [11, 14, 17],  # B diminished
    ]
    for i, chord in enumerate(chords):
        for note in chord:
            midi.addNote(
                track=track,
                channel=channel,
                pitch=note + 48,
                time=128 + i * 1,
                duration=duration,
                volume=volume,
            )  # Track 0, Channel 0, Note, Start Time, Duration, Velocity

    # Write the MIDI file to disk
    with open(filename, "wb") as output_file:
        midi.writeFile(output_file)
    print(f"Wrote to {filename}")

    # Render to audio file
    from midi2audio import FluidSynth

    fs = FluidSynth()
    audio_filename = filename.replace(".mid", ".wav")
    fs.midi_to_audio(midi_file=filename, audio_file=audio_filename)
    print(f"Wrote to {audio_filename}")

    # mp3 to wave
    from pydub import AudioSegment

    audio = AudioSegment.from_wav(audio_filename)
    mp3_filename = audio_filename.replace(".wav", ".mp3")
    audio.export(mp3_filename, format="mp3")
    print(f"Wrote to {mp3_filename}")


if __name__ == "__main__":
    generate_midi("piano_notes.mid")
