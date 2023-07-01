#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -euo pipefail
IFS=$'\n\t'
WORKDIR='/home/onlyfeet/workspace'

cd /home/onlyfeet/workspace; \
git clone https://github.com/BishopFox/cloudfox.git; \
cd /home/onlyfeet/workspace/cloudfox; \
GOOS=linux GOARCH=amd64 go build .