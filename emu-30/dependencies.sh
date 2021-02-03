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

apt-get install -y python ninja-build git realpath zip make gcc g++ wget curl patch
# windows
apt-get install -y libfuse2
# test suite
#apt-get install -y libx11-6 libgl1 binutils  # xenial
apt-get install -y libx11-6 libgl1-mesa-glx binutils
