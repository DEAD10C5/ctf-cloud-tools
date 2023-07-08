#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

setup() {
    load '/home/onlyfeet/workspace/test_helper/bats-support/load'
    load '/home/onlyfeet/workspace/test_helper/bats-assert/load'
    load '/home/onlyfeet/workspace/test_helper/bats-files/load'
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$DIR/../bin:$PATH"
}

@test "check install_aws.sh" {
  install_aws.sh
  doas apk add mandoc
  run aws
  [ "${lines[-1]}" = "aws: error: the following arguments are required: command" ]
}

@test "check install_cloudfox.sh" {
  install_cloudfox.sh
  run /usr/local/bin/install_cloudfox
  [ "${lines[-1]}" = "for more information about a command" ]
}

@test "check install_cloudjack.sh" {
  run install_cloudjack.sh
}