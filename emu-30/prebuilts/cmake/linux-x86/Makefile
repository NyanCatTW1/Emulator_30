.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/cmake:
	mkdir -p ../../wd && \
	cd ../../wd && \
	rm -rf cmake-3.10.2 && \
	tar xvf ../tarballs/cmake-3.10.2.tar.gz && \
	cd cmake-3.10.2 && \
	./configure --parallel=6 --prefix=$(ROOT_DIR) && \
	make -j6 && \
	make install

clean:
	rm -rf bin/ doc/ share/

distclean: clean
	rm -rf ../../wd/cmake-3.10.2

all: bin/cmake
