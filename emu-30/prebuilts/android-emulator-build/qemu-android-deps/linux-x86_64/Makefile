.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libglib-2.0.a:
	mkdir -p ../../../wd/glib-build
	cd ../../../wd/glib-build && \
	../../tarballs/glib-2.38.2/configure --prefix=$(ROOT_DIR) && \
	make -j6 && \
	make install

clean:
	echo "QEMU deps clean stub"

distclean: clean
	echo "QEMU deps distclean stub"

all: lib/libglib-2.0.a
