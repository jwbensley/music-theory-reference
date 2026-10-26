from html.parser import HTMLParser

import pytest

from app.form import PUBLIC_URL, form_html, post_url
from app.sounds import Chords, Intervals, Keys, Scales, SoundTypes


class FormParser(HTMLParser):
    """
    Collect the option values of each <select> element in the form.
    """

    def __init__(self) -> None:
        super().__init__()
        self.options: dict[str, list[str]] = {}
        self.exercise_types: dict[str, str] = {}
        self._select: str | None = None

    def handle_starttag(
        self, tag: str, attrs: list[tuple[str, str | None]]
    ) -> None:
        attributes = dict(attrs)
        if tag == "select":
            self._select = str(attributes["id"])
            self.options[self._select] = []
            if attributes.get("data-exercise-type"):
                self.exercise_types[self._select] = str(
                    attributes["data-exercise-type"]
                )
        elif tag == "option" and self._select and attributes.get("value"):
            self.options[self._select].append(str(attributes["value"]))

    def handle_endtag(self, tag: str) -> None:
        if tag == "select":
            self._select = None


@pytest.fixture(scope="module")
def form() -> FormParser:
    parser = FormParser()
    parser.feed(form_html)
    return parser


def test_form_posts_to_download_endpoint() -> None:
    assert post_url == f"{PUBLIC_URL}/download"
    assert f"fetch('{post_url}'" in form_html


def test_key_options(form: FormParser) -> None:
    assert form.options["key"] == [k.value.get_name() for k in Keys]


def test_exercise_choice_options(form: FormParser) -> None:
    assert form.options["chords_choices"] == [
        c.value.get_name() for c in Chords
    ]
    assert form.options["intervals_choices"] == [
        i.value.get_name() for i in Intervals
    ]
    assert form.options["scales_choices"] == [
        s.value.get_name() for s in Scales
    ]


def test_exercise_types(form: FormParser) -> None:
    # The selected exercise type is sent to the API, so must be a valid name
    assert sorted(form.exercise_types.values()) == sorted(
        s.value.get_name() for s in SoundTypes
    )
