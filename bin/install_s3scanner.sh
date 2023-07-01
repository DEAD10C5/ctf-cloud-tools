#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -euo pipefail
IFS=$'\n\t'
WORKDIR='/home/onlyfeet/workspace'


doas apk add --no-cache \
    python3 \
    py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir awscli \
    && rm -rf /var/cache/apk/*

cd /home/onlyfeet && git clone https://github.com/sa7mon/S3Scanner.git
cd /home/onlyfeet/S3Scanner
pip3 install -r /home/onlyfeet/S3Scanner/requirements.txt
python3 -m S3Scanner