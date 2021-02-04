.PHONY: all
VERSION=30
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/gcc:
	mkdir -p ../wd/gcc-5.1.0-build
	cd ../wd/gcc-5.1.0-build && \
	../../tarballs/gcc-5.1.0/configure --prefix=${ROOT_DIR} --disable-multilib --enable-languages=c,c++ && \
	make -j6 && \
	make install

clean:
	echo "GCC-5.1.0 clean stub"

distclean: clean
	rm -rf ../wd/gcc-5.1.0-build

all: bin/gcc
