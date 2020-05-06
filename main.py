#!/usr/bin/env python3

# pip3 install jinja2

from jinja2 import Environment, FileSystemLoader
import os
import shutil
import sys

file_loader = FileSystemLoader(".")
env = Environment(loader=file_loader)


if os.path.isdir("./render"):
    try:
        shutil.rmtree("./render")
    except Exception as e:
        print("Couldn't remov existing render output folder {}: {}".format(
            "./render", e)
        )
        ###return False

if not os.path.isdir("./render"):
    try:
        os.makedirs("./render", exist_ok=True)
        print("Created directory: {}".format("./render"))
    except Exception as e:
        print("Couldn't create directory {}: {}".format("./render", e))
        ###return False

if not os.path.isdir("./render/scales"):
    try:
        os.makedirs("./render/scales", exist_ok=True)
        print("Created directory: {}".format("./render/scales"))
    except Exception as e:
        print("Couldn't create directory {}: {}".format("./render/scales", e))
        ###return False

if not os.path.isdir("./render/chords"):
    try:
        os.makedirs("./render/chords", exist_ok=True)
        print("Created directory: {}".format("./render/chords"))
    except Exception as e:
        print("Couldn't create directory {}: {}".format("./render/chords", e))
        ###return False


notes = ['a', 'b♭', 'b', 'c', 'd♭', 'd', 'e♭', 'e', 'f', 'g♭', 'g', 'a♭']

for note in notes:

    if note == 'c':

        data = {}

        data['root'] = note

        data['scale'] = notes[notes.index(note):] + notes[:notes.index(note)] + list(note)

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

        template = env.get_template('./templates/scales/main.j2')
        render_output = template.render(data)
        output_file = "render/scales/" + data['root'] + ".ly"

        try:
            render_file = open(output_file, 'w')
        except Exception as e:
            print("Couldn't open output file {}: {}".format(output_file, e))
            ###return False

        try:
            render_file.write(render_output)
        except Exception as e:
            print("Couldn't write to output file {}: {}".format(output_file, e))
            ###return False

        render_file.close()

        template = env.get_template('./templates/chords/main.j2')
        render_output = template.render(data)
        output_file = "render/chords/" + data['root'] + ".ly"
        try:
            render_file = open(output_file, 'w')
        except Exception as e:
            print("Couldn't open output file {}: {}".format(output_file, e))
            ###return False

        try:
            render_file.write(render_output)
        except Exception as e:
            print("Couldn't write to output file {}: {}".format(output_file, e))
            ###return False

        render_file.close()
        