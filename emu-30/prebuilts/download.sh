#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
mkdir -p tarballs
cd tarballs
wget -c https://github.com/Kitware/CMake/releases/download/v3.10.2/cmake-3.10.2.tar.gz
