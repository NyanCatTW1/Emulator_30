.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.ONESHELL:
bin/cmake:
	mkdir -p ../../wd && cd ../../wd
	wget -c https://github.com/Kitware/CMake/releases/download/v3.10.2/cmake-3.10.2.tar.gz
	rm -r cmake-3.10.2
	tar xvf cmake-3.10.2.tar.gz
	cd cmake-3.10.2
	./configure --prefix=$(ROOT_DIR)
	make -j6
	make install

all: bin/cmake
