.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libvirglrenderer.a:
	mkdir -p ../../../../wd/virgl-build
	cd ../../../../wd/virgl-build && \
	../../tarballs/virglrenderer/configure --disable-egl --disable-shared --enable-static --prefix=$(ROOT_DIR) --enable-autotools && \
	make -j6 && \
	make install

clean:
	rm -rf include/ lib/

distclean: clean
	rm -rf ../../../../wd/virgl-build

all: lib/libvirglrenderer.a
