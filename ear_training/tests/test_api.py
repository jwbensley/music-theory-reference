import os
from typing import Any
from unittest.mock import MagicMock

from fastapi.testclient import TestClient
import pytest

import api
from app.app import EarTraining
from app.form import form_html
from conftest import SpliceCall


@pytest.fixture
def client() -> TestClient:
    return TestClient(api.app)


def test_form(client: TestClient) -> None:
    response = client.get("/")
    assert response.status_code == 200
    assert response.headers["content-type"].startswith("text/html")
    assert response.text == form_html


def test_generate(client: TestClient, monkeypatch: pytest.MonkeyPatch) -> None:
    generate_audio = MagicMock()
    monkeypatch.setattr(EarTraining, "generate_audio", generate_audio)

    response = client.get("/generate")

    assert response.status_code == 200
    assert response.json() == {"message": "Audio files generated successfully"}
    generate_audio.assert_called_once_with()


def test_download(client: TestClient, splice_calls: list[SpliceCall]) -> None:
    response = client.post(
        "/download",
        json={
            "exercise_type": "chords",
            "exercise_choices": ["major", "minor"],
            "key": "d",
            "octave": "3",
            "repetitions": 2,
        },
    )

    assert response.status_code == 200
    assert response.headers["content-type"] == "audio/mpeg"
    assert response.content == b"fake mp3"
    output_file = splice_calls[0].output_file
    assert (
        os.path.basename(output_file)
        in response.headers["content-disposition"]
    )

    files = splice_calls[0].relative_input_files()
    assert files[:3] == [
        "narration/chords.wav",
        "narration/in.wav",
        "narration/d.wav",
    ]
    assert files.count("narration/major.wav") == 2
    assert files.count("narration/minor.wav") == 2
    assert files.count("midi/3_d_major.wav") == 2 * 3
    assert files.count("midi/3_d_minor.wav") == 2 * 3


def test_download_defaults(
    client: TestClient, splice_calls: list[SpliceCall]
) -> None:
    response = client.post(
        "/download",
        json={"exercise_type": "scales", "exercise_choices": ["major"]},
    )

    assert response.status_code == 200
    files = splice_calls[0].relative_input_files()
    # Octave 4, the key of C, and 3 repetitions
    assert files[:3] == [
        "narration/scales.wav",
        "narration/in.wav",
        "narration/c.wav",
    ]
    assert "midi/4_c_0_25.wav" in files
    assert files.count("narration/major.wav") == 3


def test_download_random(
    client: TestClient, splice_calls: list[SpliceCall]
) -> None:
    # The web form sends null for unselected options
    response = client.post(
        "/download",
        json={
            "exercise_type": None,
            "exercise_choices": None,
            "key": None,
            "octave": None,
            "repetitions": 1,
        },
    )
    assert response.status_code == 200
    assert len(splice_calls) == 1


@pytest.mark.parametrize(
    "payload",
    [
        {"exercise_type": "melodies"},
        {"exercise_type": "chords", "exercise_choices": ["not_a_chord"]},
        {"exercise_type": "chords", "key": "h"},
        {"exercise_type": "chords", "octave": "8"},
        {"exercise_type": "chords", "repetitions": "many"},
    ],
)
def test_download_invalid_input(
    client: TestClient,
    splice_calls: list[SpliceCall],
    payload: dict[str, Any],
) -> None:
    response = client.post("/download", json=payload)
    assert response.status_code == 422
    assert splice_calls == []
