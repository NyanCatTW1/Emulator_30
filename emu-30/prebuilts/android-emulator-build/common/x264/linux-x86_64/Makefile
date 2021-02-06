.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libx264.a:
	mkdir -p ../../../../wd/x264-build
	cd ../../../../wd/x264-build && \
	../../tarballs/x264/configure \
		--prefix=${ROOT_DIR} \
		--enable-pic \
		--extra-cflags=-fPIC \
		--disable-asm \
		--disable-cli \
		--enable-static && \
	make -j6 && \
	make install

clean:
	rm -rf include/ lib/

distclean: clean
	rm -rf ../../../../wd/x264-build

all: lib/libx264.a
