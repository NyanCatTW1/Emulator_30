.PHONY: all
VERSION=30
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/gcc:
	mkdir -p ../wd/gcc-5-build
	cd ../wd/gcc-5-build && \
	../../tarballs/gcc-5/configure --prefix=${ROOT_DIR} --disable-multilib --enable-languages=c,c++ && \
	make -j6 && \
	make install

clean:
	rm -rf bin/ include/ lib/ lib64/ libexec/ share/

distclean: clean
	rm -rf ../wd/gcc-5-build

all: bin/gcc
