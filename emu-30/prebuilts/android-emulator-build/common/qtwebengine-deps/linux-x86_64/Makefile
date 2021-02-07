.PHONY: all clean distclean qtwebengine-deps
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

qtwebengine-deps: \
	lib/libxkbcommon.so \
	lib/libxcb.so \
	share/xcb/damage.xml \
	bin/patchelf

lib/libxkbcommon.so: lib/libxcb.so
	mkdir -p ../../../../wd/qtwebengine-deps/libxkbcommon-build
	cd ../../../../wd/qtwebengine-deps/libxkbcommon-build && \
	PKG_CONFIG_PATH="/home/android/wd/prebuilts/android-emulator-build/common/qtwebengine-deps/linux-x86_64/lib/pkgconfig" ../../../tarballs/libxkbcommon-0.8.2/configure --prefix=${ROOT_DIR} && \
	make -j6 && \
	make install

lib/libxcb.so: share/xcb/damage.xml
	mkdir -p ../../../../wd/qtwebengine-deps/libxcb-build
	cd ../../../../wd/qtwebengine-deps/libxcb-build && \
	PKG_CONFIG_PATH="/home/android/wd/prebuilts/android-emulator-build/common/qtwebengine-deps/linux-x86_64/lib/pkgconfig" ../../../tarballs/libxcb-1.12/configure --prefix=${ROOT_DIR} && \
  make -j6 && \
  make install

share/xcb/damage.xml: # I have lots of those in my brain right now.
	mkdir -p ../../../../wd/qtwebengine-deps/xcb-proto-build
	cd ../../../../wd/qtwebengine-deps/xcb-proto-build && \
  ../../../tarballs/xcb-proto-1.12/configure --prefix=${ROOT_DIR} && \
  make -j6 && \
  make install

bin/patchelf:
	mkdir -p ../../../../wd/qtwebengine-deps/patchelf-build
	cd ../../../../wd/qtwebengine-deps/patchelf-build && \
  ../../../tarballs/patchelf-0.12.20200827.8d3a16e/configure --prefix=${ROOT_DIR} && \
  make -j6 && \
  make install

clean:
	rm -rf bin/ include/ lib/ share/

distclean: clean
	rm -rf ../../../../wd/qtwebengine-deps

all: qtwebengine-deps
