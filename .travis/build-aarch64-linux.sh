#!/bin/sh

set -e
set -x

cmake --version

export CC=gcc-6
export CXX=g++-6

mkdir build && cd build
cmake .. -DDYNARMIC_USE_SYSTEM_BOOST=0 -DBoost_INCLUDE_DIRS=${PWD}/../externals/ext-boost
make -j4

ctest -VV -C Release
