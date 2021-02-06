.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/patchelf:
	mkdir -p ../wd/patchelf-build
	cd ../wd/patchelf-build && \
	../../tarballs/patchelf-0.12.20200827.8d3a16e/configure --prefix=${ROOT_DIR} && \
	make -j6 && \
	make install

clean:
	rm -rf bin/ share/

distclean: clean
	rm -rf ../wd/patchelf-build

all: bin/patchelf
