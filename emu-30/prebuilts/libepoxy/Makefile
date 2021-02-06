.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

include/epoxy/gl_generated.h:
	mkdir -p ../wd/libepoxy-build
	cd ../wd/libepoxy-build && \
	../../tarballs/libepoxy-1.5.4/configure --disable-glx --prefix=$(ROOT_DIR) && \
	make -j6 && \
	make install

clean:
	rm -rf include/ lib/

distclean: clean
	rm -rf ../../wd/libepoxy-build

all: include/epoxy/gl_generated.h
