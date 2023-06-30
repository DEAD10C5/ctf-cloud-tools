#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -euo pipefail
IFS=$'\n\t'

git clone https://github.com/BishopFox/cloudfox.git; \
cd ./cloudfox; \
GOOS=linux GOARCH=amd64 go build .