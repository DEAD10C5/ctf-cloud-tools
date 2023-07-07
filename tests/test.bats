#!/usr/bin/env bash

setup() {
    load '/home/onlyfeet/workspace/test_helper/bats-support/load'
    load '/home/onlyfeet/workspace/test_helper/bats-assert/load'
    load '/home/onlyfeet/workspace/test_helper/bats-file/load'
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$DIR/../bin:$PATH"
}