.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libglib-2.0.a:
	mkdir -p ../../../wd/glib-build
	cd ../../../wd/glib-build && \
	../../tarballs/glib-2.38.2/configure --prefix=$(ROOT_DIR) && \
	make -j6 && \
	make install

lib/libpixman-1.a:
	mkdir -p ../../../wd/pixman-build
	cd ../../../wd/pixman-build && \
	../../tarballs/pixman-0.34.0/configure --prefix=$(ROOT_DIR) && \
	make -j6 && \
	make install

clean:
	rm -rf bin/ include/ lib/ share/

distclean: clean
	rm -rf ../../../wd/{glib,pixman}-build

all: lib/libglib-2.0.a lib/libpixman-1.a
