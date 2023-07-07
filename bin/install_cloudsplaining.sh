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

function git_clone() {
  cd ${WORKDIR} && git clone $1
}

function main() {
  install_python
  git_clone https://github.com/salesforce/cloudsplaining.git
  cd ${WORKDIR}/S3Scanner
  doas pip3 install -r ${WORKDIR}/cloudsplaining/requirements.txt
  doas pip3 install cloudsplaining
}

main