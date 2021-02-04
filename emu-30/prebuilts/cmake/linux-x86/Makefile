.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/cmake:
	mkdir -p ../../wd/cmake-build
	cd ../../wd/cmake-build && \
	../../tarballs/cmake-3.10.2/configure --parallel=6 --prefix=$(ROOT_DIR) && \
	make -j6 && \
	make install

clean:
	rm -rf bin/ doc/ share/

distclean: clean
	rm -rf ../../wd/cmake-build

all: bin/cmake
