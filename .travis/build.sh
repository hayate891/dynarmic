#!/bin/sh

set -e
set -x

cmake --version

if [ ! -z "$EMULATE_AARCH64" ]; then
    ./.travis/emulate-aarch64.sh
elif [ "$TRAVIS_OS_NAME" = "linux" -o -z "$TRAVIS_OS_NAME" ]; then
    ./.travis/build-x86_64-linux.sh
elif [ "$TRAVIS_OS_NAME" = "osx" ]; then
    ./.travis/build-x86_64-macos.sh
else
    exit 1
fi
