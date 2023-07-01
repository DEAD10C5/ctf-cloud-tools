#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -euo pipefail
IFS=$'\n\t'
WORKDIR='/home/onlyfeet/workspace'

doas apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make

#curl -L https://aka.ms/InstallAzureCli | bash
doas pip install --upgrade pip
doas pip install azure-cli

echo "test Azure CLI"
az --version