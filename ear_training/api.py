#!/usr/bin/env python3

from typing import Union
from enum import Enum
from fastapi import FastAPI
from pydantic import BaseModel

from app.sounds import (
    Chord,
    Chords,
    Interval,
    Key,
    Keys,
    Scale,
    SoundTypes,
    Intervals,
    Scales,
)

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
    key: KeyName
    sound_type: SoundType
    sound_type_choices: Union[
        list[ChordTypes], list[IntervalTypes], list[ScaleTypes]
    ]

    class Config:
        arbitrary_types_allowed = True

    def get_key(self) -> Key:
        return Keys[self.key.lower()].value

    def get_sound_type(self) -> SoundTypes:
        return SoundTypes[self.sound_type.lower()].value


app = FastAPI()


@app.post("/download")
async def download(args: args) -> SoundTypes:
    return args.get_sound_type()


app.openapi()

html = f"""
<!doctype html>
  <html>
    <head>
      <meta charset="utf-8">
      <title>Download Sounds</title>
    </head>
    <body>
      <form id="apiForm">
        <div>
            <label for="key">Key:</label>
            <select name="key" id="key">
"""
for key in Keys:
    html += f'            <option value="{key.value.get_name()}">{key.value.get_display_name()}</option>\n'
html += """         </select>
        </div>
        <div>
          <fieldset>
            <legend>Sound Type:</legend>
            <label><input type="radio" name="sound_type" value="chords"> Chords</label><br>
            <label><input type="radio" name="sound_type" value="intervals"> Intervals</label><br>
            <label><input type="radio" name="sound_type" value="scales"> Scales</label>
          </fieldset>
        </div>
        <div>
            <label for="sound_type_choices">Chord Type:</label>
            <select name="sound_type_choices" id="sound_type_choices" multiple>
"""
for chord in Chords:
    html += f'            <option value="{chord.value.get_name()}">{chord.value.get_display_name()}</option>\n'
html += """         </select>
        </div>
        <div>
            <label for="sound_type_choices">Interval Type:</label>
            <select name="sound_type_choices" id="sound_type_choices" multiple>
"""
for interval in Intervals:
    html += f'            <option value="{interval.value.get_name()}">{interval.value.get_display_name()}</option>\n'
html += """         </select>
        </div>
        <div>
           <label for="sound_type_choices">Scale Type:</label>
           <select name="sound_type_choices" id="sound_type_choices" multiple>
"""
for scale in Scales:
    html += f'            <option value="{scale.value.get_name()}">{scale.value.get_display_name()}</option>\n'
html += """         </select>
        </div>
        <button type="submit">Submit</button>
      </form>
      <script>
        const thisForm = document.getElementById('apiForm');
        thisForm.addEventListener('submit', async function (e) {
          e.preventDefault();
          const formData = new FormData(thisForm).entries()
          const response = await fetch('http://127.0.0.1:8000/download', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(Object.fromEntries(formData))
          });
    
          const result = await response.json();
          console.log(result)
        });
    </script>
    </body>
  </html>
"""

from fastapi.responses import HTMLResponse


@app.get("/", response_class=HTMLResponse)
def return_form():
    return HTMLResponse(content=html, status_code=200)


# uvicorn ear_training.api:app --reload --port 8000
