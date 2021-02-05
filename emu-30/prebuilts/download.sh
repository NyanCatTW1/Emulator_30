#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
mkdir -p tarballs
pushd tarballs

wget -c https://github.com/Kitware/CMake/releases/download/v3.10.2/cmake-3.10.2.tar.gz
tar xvfk cmake-3.10.2.tar.gz 2>/dev/null

git clone --depth 1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8
pushd x86_64-linux-glibc2.17-4.8
git fetch origin 3a954758bbbf155a136ccb528c3fd2431c0d14d2
git checkout 3a954758bbbf155a136ccb528c3fd2431c0d14d2
popd

git clone --depth 1 https://github.com/martine/ninja.git
pushd ninja
git fetch origin 636034b288777c9f0b7aca1072e0496de94db27c
git checkout 636034b288777c9f0b7aca1072e0496de94db27c
popd

wget -c https://ftp.gnu.org/gnu/gcc/gcc-5.5.0/gcc-5.5.0.tar.xz
tar xvfk gcc-5.5.0.tar.xz 2>/dev/null
ln -sfv gcc-5.5.0 gcc-5

git clone --depth 1 https://android.googlesource.com/toolchain/llvm-project
pushd llvm-project
git fetch origin 87f1315dfbea7c137aa2e6d362dbb457e388158d
git checkout 87f1315dfbea7c137aa2e6d362dbb457e388158d
popd

wget -c https://download.gnome.org/sources/glib/2.38/glib-2.38.2.tar.xz
tar xvfk glib-2.38.2.tar.xz 2>/dev/null

wget -c http://cairographics.org/releases/pixman-0.32.4.tar.gz
tar xvfk pixman-0.32.4.tar.gz 2>/dev/null

popd
