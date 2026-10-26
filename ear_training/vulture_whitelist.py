"""
Code which vulture reports as unused, but which is used indirectly.
This file is never run, pass it to vulture along with the code to check:

    vulture app api.py cli.py vulture_whitelist.py
"""

from api import args, download, return_form
from app.sounds import Chords, Intervals, Keys, Octaves, Scales

# Read by pydantic
args.model_config

# Called by FastAPI
download
return_form

# Enum members which are only used by iterating over the enum
Intervals.minor_second
Intervals.augmented_fourth
Intervals.tritone
Chords.major
Chords.minor
Chords.diminished
Chords.augmented
Chords.dominant_seventh
Chords.augmented_seventh
Chords.augmented_major_seventh
Scales.major
Scales.minor
Scales.harmonic_minor
Scales.melodic_minor
Scales.pentatonic_major
Scales.pentatonic_minor
Keys.a
Keys.a_sharp
Keys.b_flat
Keys.b
Keys.c_sharp
Keys.d_flat
Keys.d
Keys.d_sharp
Keys.e_flat
Keys.f_sharp
Keys.g_flat
Keys.g
Keys.g_sharp
Keys.a_flat
Octaves.zero
Octaves.three
Octaves.five
Octaves.six
Octaves.seven
