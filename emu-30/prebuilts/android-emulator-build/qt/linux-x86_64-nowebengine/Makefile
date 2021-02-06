.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libQt5CoreAndroidEmu.so:
	mkdir -p ../../../wd/qt-build
	cd ../../../wd/qt-build && \
		PATH="/home/android/wd/prebuilts/clang/host/linux-x86/clang-r399163b/bin:$$PATH" ../../tarballs/qt-everywhere-src-5.12.1/configure \
		-prefix ${ROOT_DIR} \
		-opensource \
    -confirm-license \
    -force-debug-info \
    -release \
    -no-rpath \
    -shared \
    -nomake examples \
    -nomake tests \
    -no-strip \
		-qtlibinfix AndroidEmu \
		-qt-xcb \
		-no-use-gold-linker \
    -platform linux-clang \
		-v && \
	make -j6 V=1 module-qtbase module-qtsvg module-qtimageformats && \
	echo Qt install TODO

clean:
	rm -rf bin/ include/ include.system/ lib/ plugins/

distclean: clean
	rm -rf ../../../../wd/qt-build

all: lib/libQt5CoreAndroidEmu.so
