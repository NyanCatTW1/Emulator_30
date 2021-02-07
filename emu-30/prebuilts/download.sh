#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
mkdir -p tarballs
pushd tarballs

if [ ! -d cmake-3.10.2 ]; then
  wget -c https://github.com/Kitware/CMake/releases/download/v3.10.2/cmake-3.10.2.tar.gz
  tar xvfk cmake-3.10.2.tar.gz
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
  tar xvfk gcc-5.5.0.tar.xz
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
  tar xvfk glib-2.38.2.tar.xz
fi

if [ ! -d pixman-0.34.0 ]; then
  wget -c http://cairographics.org/releases/pixman-0.34.0.tar.gz
  tar xvfk pixman-0.34.0.tar.gz
fi

if [ ! -d libepoxy-1.5.4 ]; then
  wget -c https://github.com/anholt/libepoxy/releases/download/1.5.4/libepoxy-1.5.4.tar.xz
  tar xvfk libepoxy-1.5.4.tar.xz
  pushd libepoxy-1.5.4
    mkdir -p m4
    autoreconf -fiv --install
  popd
fi

if [ ! -d virglrenderer ]; then
  cp -av ../../wd/external/virglrenderer .
  pushd virglrenderer
    ./autogen.sh
    patch -p1 -i ../../../patches/virglrenderer-legacy-libdrm-support.patch
  popd
fi

if [ ! -d mesa-17.0.7 ]; then
  wget -c https://archive.mesa3d.org/older-versions/17.x/mesa-17.0.7.tar.xz
  tar xvfk mesa-17.0.7.tar.xz
fi

if [ ! -d gperftools-2.7 ]; then
  wget -c https://github.com/gperftools/gperftools/releases/download/gperftools-2.7/gperftools-2.7.tar.gz
  tar xvfk gperftools-2.7.tar.gz
fi

if [ ! -d e2fsprogs-1.42.13 ]; then
  wget -c https://distfiles.macports.org/e2fsprogs/e2fsprogs-1.42.13.tar.gz
  tar xvfk e2fsprogs-1.42.13.tar.gz
fi

if [ ! -d libunwind-1.3.1 ]; then
  wget -c https://github.com/libunwind/libunwind/releases/download/v1.3.1/libunwind-1.3.1.tar.gz
  tar xvfk libunwind-1.3.1.tar.gz
fi

if [ ! -d libxml2-2.9.2 ]; then
  wget -c http://xmlsoft.org/sources/libxml2-2.9.2.tar.gz
  tar xvfk libxml2-2.9.2.tar.gz
fi

if [ ! -d libvpx-1.8.0 ]; then
  wget -c https://github.com/webmproject/libvpx/archive/v1.8.0/libvpx-1.8.0.tar.gz
  tar xvfk libvpx-1.8.0.tar.gz
fi

if [ ! -d x264 ]; then
  git clone --depth 1 https://code.videolan.org/videolan/x264.git
  pushd x264
    git fetch origin aaa9aa83a111ed6f1db253d5afa91c5fc844583f
    git checkout aaa9aa83a111ed6f1db253d5afa91c5fc844583f
  popd
fi

if [ ! -d ffmpeg-3.4.8 ]; then
  wget -c https://ffmpeg.org/releases/ffmpeg-3.4.8.tar.xz
  tar xvfk ffmpeg-3.4.8.tar.xz
fi

if [ ! -d qt-everywhere-src-5.12.1 ]; then
  wget -c https://ftp.osuosl.org/pub/blfs/conglomeration/qt5/qt-everywhere-src-5.12.1.tar.xz
  tar xvfk qt-everywhere-src-5.12.1.tar.xz
fi

if [ ! -d libxkbcommon-0.8.2 ]; then
  wget -c https://xkbcommon.org/download/libxkbcommon-0.8.2.tar.xz
  tar xvfk libxkbcommon-0.8.2.tar.xz
fi

if [ ! -d libxcb-1.12 ]; then
  wget -c https://xcb.freedesktop.org/dist/libxcb-1.12.tar.gz
  tar xvfk libxcb-1.12.tar.gz
fi

if [ ! -d xcb-proto-1.12 ]; then
  wget -c https://xcb.freedesktop.org/dist/xcb-proto-1.12.tar.gz
  tar xvfk xcb-proto-1.12.tar.gz
fi

if [ ! -d patchelf-0.12.20200827.8d3a16e ]; then
  wget -c https://github.com/NixOS/patchelf/releases/download/0.12/patchelf-0.12.tar.bz2
  tar xvfk patchelf-0.12.tar.bz2
fi

if [ ! -d angle ]; then
  git clone --depth 1 https://chromium.googlesource.com/angle/angle
  pushd angle
    git fetch origin 7d712e7d05418533fd90652ad089b3cacfcfca72
    git checkout 7d712e7d05418533fd90652ad089b3cacfcfca72
    patch -p1 -i ../../../patches/angle/0001-Current-emulator-specific-ANGLE-modifications.patch
    patch -p1 -i ../../../patches/angle/0002-Add-RGB888-support.patch
    patch -p1 -i ../../../patches/angle/0003-Update-ANGLE-for-latest-emulator-sysimg-changes.patch
  popd
fi

if [ ! -d depot_tools ]; then
  git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools
  pushd depot_tools
    # Get rid of the evil ninjas
    rm -v ninja{.exe,-mac,-linux32,-linux64}
  popd
fi

popd
