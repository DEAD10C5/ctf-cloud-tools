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

cd ${WORKDIR} && git_clone https://github.com/bats-core/bats-core.git
doas ${WORKDIR}/bats-core/install.sh /usr/local
#git submodule add https://github.com/bats-core/bats-core.git ${WORKDIR}/bats
git submodule add https://github.com/bats-core/bats-support.git ${WORKDIR}/test_helper/bats-support
git submodule add https://github.com/bats-core/bats-assert.git ${WORKDIR}/test_helper/bats-assert
git submodule add https://github.com/bats-core/bats-assert.git ${WORKDIR}/test_helper/bats-files
