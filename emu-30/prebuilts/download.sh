#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
mkdir -p tarballs
pushd tarballs

wget -c https://github.com/Kitware/CMake/releases/download/v3.10.2/cmake-3.10.2.tar.gz

git clone --depth 1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8
pushd x86_64-linux-glibc2.17-4.8
git fetch origin e75585c30f139dfa2eee4707a60d8d6b9e7f406a
git checkout e75585c30f139dfa2eee4707a60d8d6b9e7f406a
popd

git clone --depth 1 https://github.com/martine/ninja.git
pushd ninja
git fetch origin 636034b288777c9f0b7aca1072e0496de94db27c
git checkout 636034b288777c9f0b7aca1072e0496de94db27c
popd

popd
