# syntax=docker/dockerfile:1

FROM golang:1.20-alpine as build

LABEL maintainer="DE:AD:10:C5 <thedevilsvoice@dead10c5.org>"
LABEL org.opencontainers.image.source = "https://github.com/DEAD10C5/ctf-dc31-cloud"
LABEL org.opencontainers.image.description="DE:AD:10:C5 cloud CTF tools"
LABEL org.opencontainers.image.licenses=GPLv2


RUN mkdir /home/onlyfeet
COPY . /home/onlyfeet

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

