#!/bin/bash -ex

# Configuration
echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/00InstallRecommends

# clean-up non-free sources
cat <<EOF > /etc/apt/sources.list
deb http://archive.ubuntu.com/ubuntu/ focal main universe
deb http://archive.ubuntu.com/ubuntu/ focal-updates main universe
deb http://security.ubuntu.com/ubuntu/ focal-security main universe
#deb http://archive.ubuntu.com/ubuntu/ focal-backports main universe
EOF
apt update
apt upgrade -y

# Repo
apt install -y curl ca-certificates git python-is-python3
