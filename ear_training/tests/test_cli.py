import sys
from unittest.mock import MagicMock

import pytest

import cli
from app.app import EarTraining


@pytest.fixture
def from_args(monkeypatch: pytest.MonkeyPatch) -> MagicMock:
    from_args = MagicMock()
    monkeypatch.setattr(EarTraining, "from_args", from_args)
    return from_args


def run_cli(monkeypatch: pytest.MonkeyPatch, *args: str) -> None:
    monkeypatch.setattr(sys, "argv", ["cli.py", *args])
    cli.main()


def test_defaults(
    monkeypatch: pytest.MonkeyPatch, from_args: MagicMock
) -> None:
    run_cli(monkeypatch)
    from_args.assert_called_once_with(
        repetitions=3,
        octave_name=None,
        key_name=None,
        exercise_name=None,
        exercise_choice_names=[],
    )
    from_args.return_value.generate_exercise.assert_called_once_with()


def test_exercise_options(
    monkeypatch: pytest.MonkeyPatch, from_args: MagicMock
) -> None:
    run_cli(
        monkeypatch,
        "--exercise",
        "chords",
        "--chord-types",
        "major",
        "minor",
        "--key",
        "e_flat",
        "--octave",
        "2",
        "--repetitions",
        "5",
    )
    from_args.assert_called_once_with(
        repetitions=5,
        octave_name="2",
        key_name="e_flat",
        exercise_name="chords",
        exercise_choice_names=["major", "minor"],
    )
    from_args.return_value.generate_exercise.assert_called_once_with()


@pytest.mark.parametrize(
    "exercise, option, choices",
    [
        ("chords", "--chord-types", ["major", "minor"]),
        ("intervals", "--interval-types", ["octave", "tritone"]),
        ("scales", "--scale-types", ["harmonic_minor"]),
    ],
)
def test_exercise_choices(
    monkeypatch: pytest.MonkeyPatch,
    from_args: MagicMock,
    exercise: str,
    option: str,
    choices: list[str],
) -> None:
    run_cli(monkeypatch, "--exercise", exercise, option, *choices)
    assert from_args.call_args.kwargs["exercise_choice_names"] == choices


def test_generate_audio(
    monkeypatch: pytest.MonkeyPatch, from_args: MagicMock
) -> None:
    generate_audio = MagicMock()
    monkeypatch.setattr(EarTraining, "generate_audio", generate_audio)

    with pytest.raises(SystemExit) as exc_info:
        run_cli(monkeypatch, "--generate-audio")

    assert exc_info.value.code == 0
    generate_audio.assert_called_once_with()
    from_args.assert_not_called()


@pytest.mark.parametrize(
    "args",
    [
        ["--exercise", "melodies"],
        ["--chord-types", "not_a_chord"],
        ["--key", "h"],
        ["--octave", "8"],
        ["--repetitions", "many"],
        ["--chord-types", "major", "--scale-types", "major"],
    ],
)
def test_invalid_args(
    monkeypatch: pytest.MonkeyPatch,
    from_args: MagicMock,
    capsys: pytest.CaptureFixture[str],
    args: list[str],
) -> None:
    with pytest.raises(SystemExit) as exc_info:
        run_cli(monkeypatch, *args)
    assert exc_info.value.code == 2
    assert "error:" in capsys.readouterr().err
    from_args.assert_not_called()


def test_help(
    monkeypatch: pytest.MonkeyPatch, capsys: pytest.CaptureFixture[str]
) -> None:
    with pytest.raises(SystemExit) as exc_info:
        run_cli(monkeypatch, "--help")
    assert exc_info.value.code == 0
    help_text = capsys.readouterr().out
    assert "['chords', 'intervals', 'scales']" in help_text
    assert "--generate-audio" in help_text
