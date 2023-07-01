#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -euo pipefail
IFS=$'\n\t'
WORKDIR='/home/onlyfeet/workspace'

function install_python() {
  echo "installing python"
  doas apk add --no-cache python3 py3-pip 
  doas pip3 install --upgrade pip
  doas rm -rf /var/cache/apk/*
}

function main() {

  if [ ! -f "/.dockerenv" ]; then
    echo "Not in a docker container"
    exit 1
  fi

  install_python

  doas pip3 install --no-cache-dir awscli
  doas rm -rf /var/cache/apk/*

  # https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html
}

main