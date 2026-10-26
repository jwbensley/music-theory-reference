# Music Theory Reference

This repo contains the following applications:

* Generate PDF files with basic music theory concepts written on a stave (chords, scales, intervals, etc.).
* Generate mp3 files with basic listening exercises (chords, scales, intervals, etc.).

Settings are stored in .env.

## Reference Sheets App

Run the docker container to generate all the PDF reference files (and their Lily Pond source files) in [./reference_sheets/render](./reference_sheets/render).

```shell
docker compose run reference_sheets
```

## Ear Training App

Run the docker container to use the app CLI, to generate an mp3 file of a listening exercise.

```shell
docker compose run --rm -it --entrypoint ./cli.py ear_training --help
```

The rendered file will be saved to [./ear_training/audio/rendered/test.mp3](./ear_training/audio/rendered/test.mp3)

Start the docker container to expose the app web UI and API:

```shell
docker compose up ear_training
```

### Testing

The MP3 tests are skipped if ffmpeg isn't installed.

Run inside the container:

```shell
docker compose run --rm -e PYTHONDONTWRITEBYTECODE=1 --entrypoint sh ear_training \
  -c 'pip install -q --root-user-action=ignore -r requirements-dev.txt && pytest -p no:cacheprovider'

docker compose run --rm --entrypoint sh ear_training \
  -c 'pip install -q --root-user-action=ignore -r requirements-dev.txt && vulture app api.py cli.py vulture_whitelist.py'
```

Run locally:

```shell
cd ear_training
pip install -r requirements-dev.txt
pytest
vulture app api.py cli.py vulture_whitelist.py
```
