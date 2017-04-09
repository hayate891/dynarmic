#!/bin/sh -ex

docker run --rm --privileged multiarch/qemu-user-static:register --reset

# Run build script
echo "Executing AArch64 build script..."
docker run --volume $(pwd):/dynarmic multiarch/debian-debootstrap:arm64-sid /bin/bash -c 'cd /dynarmic; /dynarmic/.travis/deps-aarch64-linux.sh; /dynarmic/.travis/build-aarch64-linux.sh'
