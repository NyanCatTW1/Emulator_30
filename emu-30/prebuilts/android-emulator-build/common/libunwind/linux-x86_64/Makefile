.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libunwind.a:
	mkdir -p ../../../../wd/libunwind-build
	cd ../../../../wd/libunwind-build && \
	../../tarballs/libunwind-1.3.1/configure --prefix=${ROOT_DIR} && \
	make -j6 && \
	make install

clean:
	rm -rf include/ lib/

distclean: clean
	rm -rf ../../../../wd/libunwind-build

all: lib/libunwind.a
