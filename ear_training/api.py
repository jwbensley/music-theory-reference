#!/usr/bin/env python3

import os
from typing import Union
from enum import Enum
from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.responses import HTMLResponse, FileResponse
from app.form import form_html
from app.sounds import (
    Chords,
    Keys,
    Octaves,
    SoundTypes,
    Intervals,
    Scales,
)
from app.app import EarTraining
import logging

debug = True
if debug:
    logging.basicConfig(level=logging.DEBUG)
    logging.debug("Debug logging started")
else:
    logging.basicConfig(level=logging.INFO)
    logging.info("Info logging started")

OctaveName = Enum(
    "OctaveName",
    {member.name: member.value.name for member in Octaves},
    type=str,
)

KeyName = Enum(
    "KeyName",
    {member.name: member.value.name for member in Keys},
    type=str,
)

SoundTypeName = Enum(
    "SoundType",
    {member.name: member.value.get_name() for member in SoundTypes},
    type=str,
)

ChordTypeName = Enum(
    "ChordTypeName",
    {member.name: member.value.get_name() for member in Chords},
    type=str,
)

IntervalTypeName = Enum(
    "IntervalTypeName",
    {member.name: member.value.get_name() for member in Intervals},
    type=str,
)


ScaleTypeName = Enum(
    "ScaleTypeName",
    {member.name: member.value.get_name() for member in Scales},
    type=str,
)


class args(BaseModel):
    model_config = {"arbitrary_types_allowed": True}
    exercise_type: SoundTypeName | None = None
    repetitions: int = 3
    octave: OctaveName | None = "4"
    key: KeyName | None = "c"
    exercise_choices: (
        Union[list[ChordTypeName], list[IntervalTypeName], list[ScaleTypeName]]
        | None
    ) = None


app = FastAPI()


@app.get("/generate")
def generate_audio():
    EarTraining.generate_audio()
    return {"message": "Audio files generated successfully"}


@app.post("/download")
def download(args: args) -> FileResponse:
    et = EarTraining.from_args(
        repetitions=args.repetitions,
        octave_name=args.octave,
        key_name=args.key,
        exercise_name=args.exercise_type,
        exercise_choice_names=args.exercise_choices,
    )
    et.generate_exercise()
    return FileResponse(
        EarTraining.get_output_filename(),
        media_type="audio/mpeg",
        filename=os.path.basename(EarTraining.get_output_filename()),
    )


@app.get("/", response_class=HTMLResponse)
def return_form():
    return HTMLResponse(content=form_html, status_code=200)


# fastapi dev api.py
# uvicorn ear_training.api:app --reload --port 8000
