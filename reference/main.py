#!/usr/bin/env python3

from settings import Settings

import typing
import argparse
from jinja2 import Environment
import logging
import os
import shlex
import shutil
import subprocess


def parse_cli_args() -> dict[str, any]:
    parser = argparse.ArgumentParser(
        description="Generate reference stave music files",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    parser.add_argument(
        "-k",
        "--key",
        help="Only generate for a specific key",
        type=str,
        default=None,
        required=False,
    )

    return vars(parser.parse_args())


def render_chords(
    data: dict,
    chords_j2: str,
    chords_root: str,
    j2env: Environment,
    lily_path: str,
) -> None:
    j2 = j2env.get_template(chords_j2 + "/main.j2")
    j2_output = j2.render(data)
    output_file: str = os.path.join(chords_root, data['root_lily'] + ".ly")

    try:
        render_file = open(output_file, 'w')
    except Exception as e:
        raise e(f"Couldn't open output file {output_file}: {e}")

    try:
        render_file.write(j2_output)
    except Exception as e:
        raise e(f"Couldn't write to output file {j2_output}: {e}")

    render_file.close()

    cmd = lily_path + " -o " + shlex.quote(os.path.abspath(chords_root))
    cmd += (
        " "
        + shlex.quote(os.path.abspath(chords_root))
        + "/"
        + data['root_lily']
        + ".ly"
    )

    try:
        ret = subprocess.getstatusoutput(cmd)
        if ret[0] != 0:
            print(ret[1])
    except Exception as e:
        raise e(f"Unable to render LilyPond file to PDF: {cmd}\n{e}")


def render_scales(
    data: dict,
    scales_j2: str,
    scales_root: str,
    j2env: Environment,
    lily_path: str,
) -> None:
    j2 = j2env.get_template(scales_j2 + "/main.j2")
    j2_output = j2.render(data)
    output_file: str = os.path.join(scales_root, data['root_lily'] + ".ly")

    try:
        render_file = open(output_file, 'w')
    except Exception as e:
        raise e(f"Couldn't open output file {output_file}: {e}")

    try:
        render_file.write(j2_output)
    except Exception as e:
        raise e(f"Couldn't write to output file {j2_output}: {e}")

    render_file.close()

    cmd = lily_path + " -o " + shlex.quote(os.path.abspath(scales_root))
    cmd += (
        " "
        + shlex.quote(os.path.abspath(scales_root))
        + "/"
        + data['root_lily']
        + ".ly"
    )

    try:
        ret = subprocess.getstatusoutput(cmd)
        if ret[0] != 0:
            print(ret[1])
    except Exception as e:
        raise e(f"Unable to render LilyPond file to PDF: {cmd}\n{e}")


def setup_dirs(render_root: str, chords_root: str, scales_root: str) -> None:
    if os.path.isdir(render_root):
        try:
            shutil.rmtree(render_root)
        except Exception as e:
            raise e(
                f"Couldn't remove existing render output folder "
                f"{render_root}: {e}"
            )

    if not os.path.isdir(render_root):
        try:
            os.makedirs(render_root, exist_ok=True)
            print(f"Created directory: {render_root}")
        except Exception as e:
            raise e(f"Couldn't create directory {render_root}: {e}")

    if not os.path.isdir(chords_root):
        try:
            os.makedirs(chords_root, exist_ok=True)
            print(f"Created directory: {chords_root}")
        except Exception as e:
            raise e(f"Couldn't create directory {chords_root}: {e}")

    if not os.path.isdir(scales_root):
        try:
            os.makedirs(scales_root, exist_ok=True)
            print(f"Created directory: {scales_root}")
        except Exception as e:
            raise e(f"Couldn't create directory {scales_root}: {e}")


def main():
    args = parse_cli_args()
    if args['key']:
        Settings.keys = [args['key']]

    setup_dirs(
        Settings.render_root, Settings.chords_root, Settings.scales_root
    )

    for key in Settings.keys:
        if key:  # key == "a♭" or key == "c":
            data: dict[str, any] = {}

            data['root'] = key  # E.g. "b♭"

            data['scale'] = (
                Settings.notes[Settings.notes.index(key) :]
                + Settings.notes[: Settings.notes.index(key)]
                + [key]
            )

            data['lily_scale'] = []
            for note in data['scale']:
                if '♭' in note:
                    data['lily_scale'].append(note.replace('♭', 'flat'))
                elif '#' in note:
                    data['lily_scale'].append(note.replace('#', 'sharp'))
                elif '♮' in note:
                    data['lily_scale'].append(note.replace('♮', ''))
                else:
                    data['lily_scale'].append(note)

            data['root_lily'] = data['lily_scale'][
                data['scale'].index(key)
            ]  # E.g. "bflat"

            render_chords(
                data,
                Settings.chords_j2,
                Settings.chords_root,
                Settings.j2env,
                Settings.lily_path,
            )

            render_scales(
                data,
                Settings.scales_j2,
                Settings.scales_root,
                Settings.j2env,
                Settings.lily_path,
            )


if __name__ == '__main__':
    main()
