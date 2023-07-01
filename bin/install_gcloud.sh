#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -euo pipefail
IFS=$'\n\t'
WORKDIR='/home/onlyfeet/workspace'

mkdir ${WORKDIR}/gcloud
curl https://sdk.cloud.google.com > ${WORKDIR}/gcloud/install.sh
bash ${WORKDIR}/gcloud/install.sh --disable-prompts