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

function install_lolcat() {
  doas apk add ruby
  doas gem install lolcat
  doas apk del ca-certificates ruby-dev
  doas rm -rf /usr/share/terminfo /usr/share/ca-certificates /var/cache /etc/ssl \
    /etc/terminfo /lib/libssl.so.1.1 /lib/libcrypto.so.1.1   \
    /usr/lib/ruby/gems/2.7.0/cache /usr/lib/ruby/2.7.0/x86_64-linux-musl/enc
}

function main() {

  if [ ! -f "/.dockerenv" ]; then
    echo "Not in a docker container"
    exit 1
  fi

  if [ ! -d "${WORKDIR}" ]; then
    mkdir ${WORKDIR}
  fi

  install_python
  install_lolcat
}

main
