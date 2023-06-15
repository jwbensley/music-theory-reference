ARG ARCH="x64"
ARG OS="linux"
FROM ubuntu:22.04
LABEL description="music_theory"

RUN apt-get update && apt-get install -y --no-install-recommends wget ca-certificates python3

RUN wget https://gitlab.com/lilypond/lilypond/-/releases/v2.24.1/downloads/lilypond-2.24.1-linux-x86_64.tar.gz && \
tar -xvf lilypond-2.24.1-linux-x86_64.tar.gz && \
/lilypond-2.24.1/bin/lilypond -v

