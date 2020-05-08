#!/usr/bin/env python3

# pip3 install jinja2

from jinja2 import Environment, FileSystemLoader
import os
import shlex
import shutil
import subprocess
import sys


def render_chords(data, chords_j2, chords_root, j2env, lily_path):

    j2 = j2env.get_template(chords_j2 + "/main.j2")
    j2_output = j2.render(data)
    output_file = chords_root + "/" + data['root_lily'] + ".ly"

    try:
        render_file = open(output_file, 'w')
    except Exception as e:
        print("Couldn't open output file {}: {}".format(output_file, e))
        return False

    try:
        render_file.write(j2_output)
    except Exception as e:
        print("Couldn't write to output file {}: {}".format(output_file, e))
        return False

    render_file.close()

    cmd = lily_path + " -o " + shlex.quote(os.path.abspath(chords_root))
    cmd += " " + shlex.quote(os.path.abspath(chords_root)) + "/" + data['root_lily'] + ".ly"

    try:
        ret = subprocess.getstatusoutput(cmd)
        if ret[0] != 0:
            print(ret[1])
    except Exception as e:
        print("Unable to render LilyPond file to PDF: {}\n{}".format(cmd, e))
        return False

    return True


def render_scales(data, scales_j2, scales_root, j2env, lily_path):

    j2 = j2env.get_template(scales_j2 + "/main.j2")
    j2_output = j2.render(data)
    output_file = scales_root + "/" + data['root_lily'] + ".ly"

    try:
        render_file = open(output_file, 'w')
    except Exception as e:
        print("Couldn't open output file {}: {}".format(output_file, e))
        return False

    try:
        render_file.write(j2_output)
    except Exception as e:
        print("Couldn't write to output file {}: {}".format(output_file, e))
        return False

    render_file.close()

    cmd = lily_path + " -o " + shlex.quote(os.path.abspath(scales_root))
    cmd += " " + shlex.quote(os.path.abspath(scales_root)) + "/" + data['root_lily'] + ".ly"

    try:
        ret = subprocess.getstatusoutput(cmd)
        if ret[0] != 0:
            print(ret[1])
    except Exception as e:
        print("Unable to render LilyPond file to PDF: {}\n{}".format(cmd, e))
        return False

    return True


def setup_dirs(render_root, chords_root, scales_root):

    if os.path.isdir(render_root):
        try:
            shutil.rmtree(render_root)
        except Exception as e:
            print("Couldn't remove existing render output folder {}: {}".format(
                render_root, e)
            )
            return False

    if not os.path.isdir(render_root):
        try:
            os.makedirs(render_root, exist_ok=True)
            print("Created directory: {}".format(render_root))
        except Exception as e:
            print("Couldn't create directory {}: {}".format(render_root, e))
            return False

    if not os.path.isdir(chords_root):
        try:
            os.makedirs(chords_root, exist_ok=True)
            print("Created directory: {}".format(chords_root))
        except Exception as e:
            print("Couldn't create directory {}: {}".format(chords_root, e))
            return False

    if not os.path.isdir(scales_root):
        try:
            os.makedirs(scales_root, exist_ok=True)
            print("Created directory: {}".format(scales_root))
        except Exception as e:
            print("Couldn't create directory {}: {}".format(scales_root, e))
            return False

    return True


def main():

    lily_path = shlex.quote("/Applications/LilyPond 2.18.2.app/Contents/Resources/bin/lilypond")
    render_root = "./render"
    chords_root = render_root + "/chords"
    scales_root = render_root + "/scales"
    j2_root = "./templates"
    chords_j2 = j2_root + "/chords"
    scales_j2 = j2_root + "/scales"

    file_loader = FileSystemLoader(".")
    j2env = Environment(loader=file_loader)

    if not setup_dirs(render_root, chords_root, scales_root):
        return 1

    notes = ['a', 'b♭', 'b', 'c', 'd♭', 'd', 'e♭', 'e', 'f', 'g♭', 'g', 'a♭']

    for note in notes:

        data = {}

        data['root'] = note #E.g. "b♭"

        data['scale'] = notes[notes.index(note):] + notes[:notes.index(note)] + [note]

        data['lily_scale'] = []
        for s in data['scale']:
            if '♭' in s:
                data['lily_scale'].append(s.replace('♭', 'flat'))
            elif '#' in s:
                data['lily_scale'].append(s.replace('#', 'sharp'))
            elif '♮' in s:
                data['lily_scale'].append(s.replace('♮', ''))
            else:
                data['lily_scale'].append(s)

        data['root_lily'] = data['lily_scale'][data['scale'].index(note)] #E.g. "bflat"

        if not render_chords(data, chords_j2, chords_root, j2env, lily_path):
            return 1

        if not render_scales(data, scales_j2, scales_root, j2env, lily_path):
            return 1

    return 0


if __name__ == '__main__':
    main()