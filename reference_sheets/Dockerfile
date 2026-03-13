FROM python:3-slim
LABEL description="Render music theory reference sheets using LilyPond and Python"
ARG ARCH="x64"
ARG OS="linux"
ARG APP_PATH
ARG LILY_VERSION

RUN apt-get update && apt-get install -y --no-install-recommends wget ca-certificates && rm -rf /var/lib/apt/lists/*

RUN wget https://gitlab.com/lilypond/lilypond/-/releases/v${LILY_VERSION}/downloads/lilypond-${LILY_VERSION}-linux-x86_64.tar.gz && \
    tar -xvf lilypond-${LILY_VERSION}-linux-x86_64.tar.gz && \
    /lilypond-${LILY_VERSION}/bin/lilypond -v

COPY ./requirements.txt /$APP_PATH/requirements.txt
RUN pip install -r /$APP_PATH/requirements.txt

COPY ./ /$APP_PATH
WORKDIR /$APP_PATH
