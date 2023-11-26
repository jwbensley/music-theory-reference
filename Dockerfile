FROM ubuntu:22.04
LABEL description="music_theory"
ARG ARCH="x64"
ARG OS="linux"
ARG LILLY_VERSION

RUN apt-get update && apt-get install -y --no-install-recommends wget ca-certificates python3 pip
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN wget https://gitlab.com/lilypond/lilypond/-/releases/v${LILLY_VERSION}/downloads/lilypond-${LILLY_VERSION}-linux-x86_64.tar.gz && \
tar -xvf lilypond-${LILLY_VERSION}-linux-x86_64.tar.gz && \
/lilypond-${LILLY_VERSION}/bin/lilypond -v

COPY reference /
