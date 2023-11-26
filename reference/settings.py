from jinja2 import Environment, FileSystemLoader
import os
import shlex
import typing


class Settings:
    try:
        debug = bool(os.environ["DEBUG"])
        lily_path = shlex.quote(os.environ["LILY_PATH"])
        render_root = os.path.join(os.environ["APP_PATH"], "render")
        chords_root = os.path.join(render_root, "chords")
        scales_root = os.path.join(render_root, "scales")
        j2_root = os.path.join(os.environ["APP_PATH"], "templates")
        chords_j2 = os.path.join(j2_root, "chords")
        scales_j2 = os.path.join(j2_root, "scales")
        file_loader = FileSystemLoader("/")
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
