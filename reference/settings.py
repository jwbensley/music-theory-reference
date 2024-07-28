from jinja2 import Environment, FileSystemLoader
import os
import shlex


class Settings:
    try:
        debug = bool(os.environ["DEBUG"])
        lily_path = shlex.quote(os.environ["LILY_PATH"])
        lily_version = os.environ["LILY_VERSION"]
        render_root = os.path.join(os.environ["APP_PATH"], "render")
        chords_root = os.path.join(render_root, "chords")
        scales_root = os.path.join(render_root, "scales")
        j2_root = os.path.join(os.environ["APP_PATH"], "templates")
        chords_j2 = "chords"
        chords_entry = os.path.join(chords_j2, "main.j2")
        scales_j2 = "scales"
        scales_entry = os.path.join(scales_j2, "main.j2")
        file_loader = FileSystemLoader(j2_root)
        j2env = Environment(loader=file_loader)
    except KeyError as e:
        raise KeyError(f"Required ENV var is not set: {e}")

    keys = [
        'a',
        'b♭',
        'b',
        'c',
        'd♭',
        'd',
        'e♭',
        'e',
        'f',
        'g♭',
        'g',
        'a♭',
    ]

    notes = [
        'a',
        'b♭',
        'b',
        'c',
        'd♭',
        'd',
        'e♭',
        'e',
        'f',
        'g♭',
        'g',
        'a♭',
    ]

    interval_types = {
        0: "P1",
        1: "m2",
        2: "M2",
        3: "m3",
        4: "M3",
        5: "P4",
        6: "TT",
        7: "P5",
        8: "m6",
        9: "M6",
        10: "m7",
        11: "M7",
        12: "P8",
    }
