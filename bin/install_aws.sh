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

# https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html