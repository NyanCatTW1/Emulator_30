#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
mkdir -p tarballs
pushd tarballs

if [ ! -d cmake-3.10.2 ]; then
  wget -c https://github.com/Kitware/CMake/releases/download/v3.10.2/cmake-3.10.2.tar.gz
  tar xvfk cmake-3.10.2.tar.gz 2>/dev/null
fi

if [ ! -d x86_64-linux-glibc2.17-4.8 ]; then
  git clone --depth 1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8
  pushd x86_64-linux-glibc2.17-4.8
  git fetch origin 3a954758bbbf155a136ccb528c3fd2431c0d14d2
  git checkout 3a954758bbbf155a136ccb528c3fd2431c0d14d2
  popd
fi

if [ ! -d ninja ]; then
  git clone --depth 1 https://github.com/martine/ninja.git
  pushd ninja
  git fetch origin 636034b288777c9f0b7aca1072e0496de94db27c
  git checkout 636034b288777c9f0b7aca1072e0496de94db27c
  popd
fi

if [ ! -d gcc-5.5.0 ]; then
  wget -c https://ftp.gnu.org/gnu/gcc/gcc-5.5.0/gcc-5.5.0.tar.xz
  tar xvfk gcc-5.5.0.tar.xz 2>/dev/null
  ln -sfv gcc-5.5.0 gcc-5
fi

if [ ! -d llvm-project ]; then
  git clone --depth 1 https://android.googlesource.com/toolchain/llvm-project
  pushd llvm-project
  git fetch origin 87f1315dfbea7c137aa2e6d362dbb457e388158d
  git checkout 87f1315dfbea7c137aa2e6d362dbb457e388158d
  popd
fi

if [ ! -d glib-2.38.2 ]; then
  wget -c https://download.gnome.org/sources/glib/2.38/glib-2.38.2.tar.xz
  tar xvfk glib-2.38.2.tar.xz 2>/dev/null
fi

if [ ! -d pixman-0.34.0 ]; then
  wget -c http://cairographics.org/releases/pixman-0.34.0.tar.gz
  tar xvfk pixman-0.34.0.tar.gz 2>/dev/null
fi

if [ ! -d libepoxy-1.5.4 ]; then
  wget -c https://github.com/anholt/libepoxy/releases/download/1.5.4/libepoxy-1.5.4.tar.xz
  tar xvfk libepoxy-1.5.4.tar.xz 2>/dev/null
  pushd libepoxy-1.5.4
  mkdir -p m4
  autoreconf -fiv --install
  popd
fi

if [ ! -d virglrenderer ]; then
  cp -av ../../wd/external/virglrenderer .
  pushd virglrenderer
  ./autogen.sh
  if patch -p1 -N --dry-run --silent < ../../../patches/virglrenderer-legacy-libdrm-support.patch 2>/dev/null; then \
                patch -p1 -N < ../../../patches/virglrenderer-legacy-libdrm-support.patch; \
  fi;
  popd
fi

if [ ! -d mesa-17.0.7 ]; then
  wget -c https://archive.mesa3d.org/older-versions/17.x/mesa-17.0.7.tar.xz
  tar xvfk mesa-17.0.7.tar.xz 2>/dev/null
fi

popd
