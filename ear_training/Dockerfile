FROM python:3-slim
LABEL description="Generate sound files for ear training exercises"
ARG APP_PATH
ARG LISTEN_PORT

RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg fluidsynth ca-certificates && rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /$APP_PATH/requirements.txt
RUN pip install --no-cache-dir -r /$APP_PATH/requirements.txt

COPY ./ /$APP_PATH
WORKDIR /$APP_PATH
EXPOSE $LISTEN_PORT
