#!/bin/bash -ex

# Configuration
echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/00InstallRecommends

# clean-up non-free sources
cat <<EOF > /etc/apt/sources.list
deb http://archive.ubuntu.com/ubuntu/ trusty main universe
deb http://archive.ubuntu.com/ubuntu/ trusty-updates main universe
#deb http://security.ubuntu.com/ubuntu/ trusty-security main universe
#deb http://archive.ubuntu.com/ubuntu/ trusty-backports main universe
EOF
apt-get update

echo 'dash dash/sh boolean false' | debconf-set-selections
DEBIAN_FRONTEND=noninteractive dpkg-reconfigure --pri=high dash

apt-get install -y python ninja-build git realpath zip
# windows
apt-get install -y libfuse2
# test suite
#apt-get install -y libx11-6 libgl1 binutils  # xenial
apt-get install -y libx11-6 libgl1-mesa-glx binutils

# prebuilts/ uses Makefile
apt-get install -y make
# CMake needs gcc/g++ to build (of course)
apt-get install -y gcc g++
# x86_64-linux-glibc2.17-4.8 deps
apt-get install -y wget curl bison flex patch texinfo
# GCC 5.1.0 deps
apt-get install -y libgmp-dev libmpfr-dev libmpc-dev
# QEMU dep -> GLib 2.38.2 deps
apt-get install -y zlib1g-dev libffi-dev pkg-config gettext
# VirGLRenderer -> libepoxy deps
apt-get install -y libegl1-mesa-dev
# VirGLRenderer -> libgbm(Mesa) deps
apt-get install -y libpthread-stubs0-dev libexpat1-dev libdrm-dev
# Libvpx deps
apt-get install -y nasm yasm
# Qt deps
apt-get install -y libgles2-mesa-dev gperf libnss3-dev libdbus-1-dev libfontconfig1-dev libxcomposite-dev libxcursor-dev libxi-dev libxrandr-dev libxtst-dev libsqlite3-dev
