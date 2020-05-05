#!/usr/bin/env python3

# pip3 install jinja2

from jinja2 import Environment, FileSystemLoader
import sys

file_loader = FileSystemLoader('.')
env = Environment(loader=file_loader)
template = env.get_template('note.j2')

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

        output = template.render(data)
        print(output)