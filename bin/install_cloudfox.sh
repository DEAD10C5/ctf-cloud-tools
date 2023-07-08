#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -euo pipefail
IFS=$'\n\t'
WORKDIR='/home/onlyfeet/workspace'

function git_clone() {
  cd ${WORKDIR} && git clone $1
}

function main() {
  cd ${WORKDIR} && git_clone https://github.com/BishopFox/cloudfox.git
  cd ${WORKDIR}/cloudfox && GOOS=linux GOARCH=amd64 /usr/local/go/bin/go build .
  doas cp ${WORKDIR}/cloudfox/cloudfox /usr/local/bin
}

main
