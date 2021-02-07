#!/bin/bash -ex
VERSION='30'
TARGET=linux

mkdir -p out/dist

# https://android.googlesource.com/platform/external/qemu/+/refs/heads/emu-master-dev/android/docs/DEVELOPMENT.md
(
    cd external/qemu/

    # Note: --target {windows,linux_aarch64,darwin,darwin_aarch64,linux}
    # android/rebuild.sh
    android/rebuild.sh --verbose --no-tests  # a few obscure test failures
    # android/rebuild.sh --no-tests --mingw  # obsolete?
    # android/rebuild.sh --no-tests --target=windows  # missing msvc prebuilt

    # Note: testsuite was ran this way
    # android/scripts/unix/run_tests.sh --out-dir=/home/builder/wd/external/qemu/objs --verbose --verbose -j 4 in /home/builder/wd/external/qemu/objs

    # TODO: Qt libs are from prebuilts, need to be rebuilt

    # Obsolete script? Broken directory detection, no .zip output.
    # android/scripts/unix/package-release.sh \
    #   --package-dir=$HOME/wd/out/dist/ \
    #   --revision=$VERSION \
    #   --no-aosp-prebuilts \
    #   --no-tests
)

# Manual package for now
# TODO: not shipping Qt libQt5*AndroidEmu.so* prebuilts for now
out=$(pwd)/out/dist/emulator-$VERSION-$TARGET.zip
rm -f $out
(cd external/qemu/objs/distribution/ && zip -r -9 $out emulator/)
ls -lh external/qemu/objs/distribution/emulator/
ls -lh $out
