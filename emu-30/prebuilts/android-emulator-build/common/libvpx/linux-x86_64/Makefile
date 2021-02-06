.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libvpx.a:
	mkdir -p ../../../../wd/libvpx-build
	cd ../../../../wd/libvpx-build && \
	../../tarballs/libvpx-1.8.0/configure \
		--prefix=${ROOT_DIR} \
		--target=x86_64-linux-gcc \
		--enable-pic \
    --enable-static \
    --enable-vp9-highbitdepth \
    --disable-tools \
    --disable-unit-tests \
    --extra-cxxflags="-Doff_t=__off64_t -fPIC" && \
	make -j6 && \
	make install

clean:
	rm -rf bin/ include/ lib/

distclean: clean
	rm -rf ../../../../wd/libvpx-build

all: lib/libvpx.a
