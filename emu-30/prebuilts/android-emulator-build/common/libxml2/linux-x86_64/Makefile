.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libxml2.a:
	mkdir -p ../../../../wd/libxml2-build
	cd ../../../../wd/libxml2-build && \
	../../tarballs/libxml2-2.9.2/configure \
		--prefix=${ROOT_DIR} \
		--disable-shared \
  	--without-debug \
  	--without-docbook \
  	--without-ftp \
  	--without-http \
  	--without-history \
  	--without-html \
  	--without-iconv \
  	--without-python \
  	--with-minimum \
  	--with-output \
		CFLAGS="-g -O2 -fPIC" && \
	make -j6 && \
	make install

clean:
	rm -rf bin/ include/ lib/ share/

distclean: clean
	rm -rf ../../../../wd/libxml2-build

all: lib/libxml2.a
