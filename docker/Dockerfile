# syntax=docker/dockerfile:1

FROM golang:1.20-alpine as build

LABEL maintainer="DE:AD:10:C5 <thedevilsvoice@dead10c5.org>"
LABEL org.opencontainers.image.source = "https://github.com/DEAD10C5/ctf-dc31-cloud"
LABEL org.opencontainers.image.description="DE:AD:10:C5 cloud CTF tools"
LABEL org.opencontainers.image.licenses=GPLv2

RUN apk add --no-cache \
    tar \
    git \
    make \
    openssh \
    curl \
    gcc \
    doas \
    libc-dev\
    bash \
    && rm -rf /var/cache/apk/*

RUN \
  addgroup --gid 9001 engr && \
  adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/onlyfeet" \
    --ingroup "engr" \
    --uid "1000" \
    "onlyfeet"
  

RUN echo "permit nopass onlyfeet as root" >> /etc/doas.d/doas.conf
# RUN if [ -f "/home/onlyfeet/.bash_history" ]; then chmod 666 home/onlyfeet/.bash_history; fi
WORKDIR /home/onlyfeet
COPY . /home/onlyfeet
RUN chown -R onlyfeet:engr /home/onlyfeet
USER onlyfeet

