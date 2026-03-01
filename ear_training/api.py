#!/usr/bin/env python3

from typing import Union
from enum import Enum
from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.responses import HTMLResponse
from app.form import form_html
from app.sounds import (
    Chords,
    Key,
    Keys,
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

KeyName = Enum(
    "KeyName",
    {member.name: member.value.name for member in Keys},
    type=str,
)

SoundType = Enum(
    "SoundType",
    {member.name: member.value.get_name() for member in SoundTypes},
    type=str,
)

ChordTypes = Enum(
    "ChordTypes",
    {member.name: member.value.get_name() for member in Chords},
    type=str,
)

IntervalTypes = Enum(
    "IntervalTypes",
    {member.name: member.value.get_name() for member in Intervals},
    type=str,
)

ScaleTypes = Enum(
    "ScaleTypes",
    {member.name: member.value.get_name() for member in Scales},
    type=str,
)


class args(BaseModel):
    key: KeyName | None = None
    sound_type: SoundType | None = None
    sound_type_choices: (
        Union[list[ChordTypes], list[IntervalTypes], list[ScaleTypes]] | None
    ) = None

    class Config:
        arbitrary_types_allowed = True

    def get_key(self) -> Key:
        return Keys[self.key.lower()].value

    def get_sound_type(self) -> SoundTypes:
        return SoundTypes[self.sound_type.lower()].value


app = FastAPI()


@app.post("/download")
async def download(args: args) -> args:

    _ = EarTraining.from_args(
        args.key,
        args.sound_type,
        args.sound_type_choices,
    )

    return args


@app.get("/", response_class=HTMLResponse)
def return_form():
    return HTMLResponse(content=form_html, status_code=200)


@app.get("/a")
def a():
    pass


# uvicorn ear_training.api:app --reload --port 8000
