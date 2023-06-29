# syntax=docker/dockerfile:1

FROM golang:1.20-alpine as build

LABEL maintainer="franklin <franklin@dead10c5.org>"
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

# awscli
RUN apk add --no-cache \
    python3 \
    py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir \
    awscli \
    && rm -rf /var/cache/apk/*

# cloudfox
#RUN git clone https://github.com/BishopFox/cloudfox.git; \
#    cd ./cloudfox; echo $PWD; \
#    GOOS=linux GOARCH=amd64 go build .

# peirates
