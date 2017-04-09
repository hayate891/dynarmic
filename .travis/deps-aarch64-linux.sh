#!/bin/sh -ex

echo -en 'travis_fold:start:aarch64.deps\\r'

apt-get -yq update
apt-get -yq --no-install-suggests --no-install-recommends --force-yes install libboost-dev cmake make gcc-6 g++-6

echo -en 'travis_fold:end:aarch64.deps\\r'