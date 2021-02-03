.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/cmake:
	mkdir -p ../../wd && \
	cd ../../wd && \
	wget -c https://github.com/Kitware/CMake/releases/download/v3.10.2/cmake-3.10.2.tar.gz && \
	rm -rf cmake-3.10.2 && \
	tar xvf cmake-3.10.2.tar.gz && \
	cd cmake-3.10.2 && \
	./configure --parallel=6 --prefix=$(ROOT_DIR) && \
	make -j6 && \
	make install

clean:
	cd ${ROOT_DIR} && \
	rm -rf bin/ doc/ share/

distclean: clean
	rm -rf ../../wd/cmake-3.10.2 ../../wd/cmake-3.10.2.tar.gz

all: bin/cmake
