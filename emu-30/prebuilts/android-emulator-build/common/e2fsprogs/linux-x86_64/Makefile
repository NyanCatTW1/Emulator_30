.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libuuid.a:
	mkdir -p ../../../../wd/e2fsprogs-build
	cd ../../../../wd/e2fsprogs-build && \
	CFLAGS="-g -O2 -fPIC" ../../tarballs/e2fsprogs-1.42.13/configure \
		--prefix=${ROOT_DIR} \
		--disable-nls \
    --disable-defrag \
    --disable-jbd-debug \
    --disable-profile \
    --disable-testio-debug \
    --disable-rpath && \
	make -j6 && \
	make install install-libs

clean:
	rm -rf bin/ etc/ include/ lib/ sbin/ share/

distclean: clean
	rm -rf ../../../../wd/e2fsprogs-build

all: lib/libuuid.a
