#!/bin/bash -ex
VERSION='30'

if [ ! -d .repo ]; then
  # https://developer.android.com/studio/releases/emulator#emulator_for_arm64_hosts
  ~/bin/repo init --quiet -u https://github.com/e666666/Emulator_30 -b emu-$VERSION-release --depth=1
  ~/bin/repo sync --quiet --current-branch -j4
  sed -i 's/COMMAND ${GEN_SDK} "--host=${HOST}"/COMMAND "bash" ${GEN_SDK} "--host=${HOST}"/' external/qemu/android/build/cmake/toolchain.cmake
fi
