.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libtcmalloc_minimal.so:
	mkdir -p ../../../../wd/tcmalloc-build
	cd ../../../../wd/tcmalloc-build && \
	../../tarballs/gperftools-2.7/configure --prefix=${ROOT_DIR} && \
	make -j6 && \
	make install

clean:
	rm -rf include/ lib/

distclean: clean
	rm -rf ../../../../wd/tcmalloc-build

all: lib/libtcmalloc_minimal.so
