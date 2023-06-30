#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

# set -euo pipefail
# IFS=$'\n\t'

apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make

#curl -L https://aka.ms/InstallAzureCli | bash
pip install --upgrade pip
pip install azure-cli

# test it out
az --version