#!/usr/bin/env python3

from settings import Settings

from typing import Union
import argparse
from jinja2 import Environment
import logging
import os
import shlex
import shutil
import subprocess


def gen_key_data(key: str) -> dict[str, Union[str, list]]:
    """import
    Generate the data for a key we want to render:
    - the root of the key
    - all the notes in the scale of that key
    - then create a LilyPond formatted version of the scale
    - and a LilyPond formatted root note of the key
    """
    data: dict[str, Union[str, list]] = {}
    data["root"] = key  # E.g. "b♭" or "c"
    data["scale"] = (
        Settings.notes[Settings.notes.index(key) :]
        + Settings.notes[: Settings.notes.index(key)]
        + [key]
    )

    data["lily_scale"] = []
    assert isinstance(data["lily_scale"], list)  # mypy
    for note in data["scale"]:
        if '♭' in note:
            data["lily_scale"].append(note.replace('♭', 'f'))
        elif '#' in note:
            data["lily_scale"].append(note.replace('#', 's'))
        elif '♮' in note:
            data["lily_scale"].append(note.replace('♮', ''))
        else:
            data["lily_scale"].append(note)

    data["root_lily"] = data["lily_scale"][
        data["scale"].index(key)
    ]  # E.g. "bflat"

    return data


def parse_cli_args() -> dict:
    """
    Parse CLI args
    """
    parser = argparse.ArgumentParser(
        description="Generate reference stave music files",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    parser.add_argument(
        "-d",
        "--debug",
        help="Enable debug logging",
        default=False,
        action="store_true",
        required=False,
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


def render():
    """
    Render chords and scales for each key
    """
    for key in Settings.keys:
        if key:
            key_data = gen_key_data(key=key)

            render_chords(
                key_data,
                Settings.chords_j2,
                Settings.chords_root,
                Settings.j2env,
            )

            render_scales(
                key_data,
            )


def render_chords(
    data: dict,
    chords_j2: str,
    chords_root: str,
    j2env: Environment,
) -> None:
    j2 = j2env.get_template(chords_j2 + "/main.j2")
    logging.debug(f"Using chords template {j2.filename}")
    j2_output = j2.render(data)
    output_file: str = os.path.join(chords_root, data["root_lily"] + ".ly")

    try:
        render_file = open(output_file, 'w')
    except Exception as e:
        raise IOError(f"Couldn't open output file {output_file}: {e}")

    try:
        render_file.write(j2_output)
    except Exception as e:
        raise IOError(f"Couldn't write to output file {j2_output}: {e}")

    render_file.close()

    cmd = (
        Settings.lily_path + " -o " + shlex.quote(os.path.abspath(chords_root))
    )
    cmd += (
        " "
        + shlex.quote(os.path.abspath(chords_root))
        + "/"
        + data["root_lily"]
        + ".ly"
    )

    try:
        ret = subprocess.getstatusoutput(cmd)
        if ret[0] != 0:
            print(ret[1])
    except Exception as e:
        raise ChildProcessError(
            f"Unable to render LilyPond file to PDF: {cmd}\n{e}"
        )


def render_template(data: dict, output_file: str, template_file: str):
    logging.debug(
        f"Rendering template: {data=}, {output_file=}, {template_file=}"
    )
    j2 = Settings.j2env.get_template(template_file)
    logging.debug(f"Using temaple {j2.filename}")
    j2_output = j2.render(data)

    try:
        render_file = open(output_file, 'w')
    except Exception as e:
        raise IOError(f"Couldn't open output file {output_file}: {e}")

    try:
        render_file.write(j2_output)
    except Exception as e:
        raise IOError(f"Couldn't write to output file {j2_output}: {e}")

    render_file.close()
    logging.debug(f"Wrote to file {output_file}")


def render_scales(
    data: dict,
) -> None:
    """
    Jinja template paths need to be relative paths.
    LilyPond paths need be abolute paths.
    """
    template_file = os.path.join(Settings.scales_j2, "main.j2")
    lily_file = os.path.join(Settings.scales_root, data["root_lily"] + ".ly")
    render_template(
        data=data, output_file=lily_file, template_file=template_file
    )
    run_lily_pond(data=data, root_path=Settings.scales_root)


def run_lily_pond(data: dict, root_path: str):
    """
    Run LilyPond to redner a PDF
    """
    root_path_abs = shlex.quote(os.path.abspath(root_path))
    lily_file_abs = os.path.join(root_path_abs, f"{data['root_lily']}.ly")

    cmd = f"{Settings.lily_path} -o {root_path_abs} {lily_file_abs}"
    logging.debug(f"Going to exec: {cmd}")

    try:
        ret = subprocess.getstatusoutput(cmd)
        if ret[0] != 0:
            logging.error(f"Non-zero return code: {ret[1]}")
    except Exception as e:
        raise ChildProcessError(
            f"Unable to render LilyPond file to PDF: {cmd}\n{e}"
        )


def setup_dirs(render_root: str, chords_root: str, scales_root: str) -> None:
    """
    Erase and recreate the render directory tree
    """
    if os.path.isdir(render_root):
        try:
            shutil.rmtree(render_root)
            logging.debug(f"Removed dir {render_root}")
        except Exception as e:
            raise IOError(
                f"Couldn't remove existing render output folder "
                f"{render_root}: {e}"
            )

    if not os.path.isdir(render_root):
        try:
            os.makedirs(render_root, exist_ok=True)
            logging.info(f"Created dir {render_root}")
        except Exception as e:
            raise IOError(f"Couldn't create directory {render_root}: {e}")

    if not os.path.isdir(chords_root):
        try:
            os.makedirs(chords_root, exist_ok=True)
            logging.debug(f"Created dir {chords_root}")
        except Exception as e:
            raise IOError(f"Couldn't create directory {chords_root}: {e}")

    if not os.path.isdir(scales_root):
        try:
            os.makedirs(scales_root, exist_ok=True)
            logging.debug(f"Created dir {scales_root}")
        except Exception as e:
            raise IOError(f"Couldn't create directory {scales_root}: {e}")


def main():
    args = parse_cli_args()
    if args["key"]:
        Settings.keys = [args["key"]]
    if args["debug"]:
        Settings.debug = True
        logging.basicConfig(level=logging.DEBUG)
    logging.debug(f"CLI Args: {args}")

    setup_dirs(
        Settings.render_root, Settings.chords_root, Settings.scales_root
    )

    render()


if __name__ == '__main__':
    main()
