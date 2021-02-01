#!/bin/bash -ex
VERSION='30'

# https://developer.android.com/studio/releases/emulator#emulator_for_arm64_hosts
~/bin/repo init --quiet -u https://github.com/e666666/Emulator_30 -b emu-$VERSION-release --depth=1
~/bin/repo sync --quiet --current-branch -j4
