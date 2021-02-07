.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libQt5CoreAndroidEmu.so:
	mkdir -p ../../../wd/qt-build
	cd ../../../wd/qt-build && \
	export CFLAGS="-fPIC" \
	export CXXFLAGS="-fPIC" \
	export LD_LIBRARY_PATH="/home/android/wd/prebuilts/clang/host/linux-x86/clang-r399163b/lib" \
	export PKG_CONFIG_PATH="/home/android/wd/prebuilts/android-emulator-build/common/qtwebengine-deps/linux-x86_64/lib/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig"; \
	export PATH="/home/android/wd/prebuilts/clang/host/linux-x86/clang-r399163b/bin:/home/android/wd/prebuilts/android-emulator-build/common/qtwebengine-deps/linux-x86_64/bin:/home/android/wd/prebuilts/ninja/linux-x86:$$PATH"; \
	../../tarballs/qt-everywhere-src-5.12.1/configure \
		-prefix ${ROOT_DIR} \
		-opensource \
    -confirm-license \
    -force-debug-info \
    -release \
    -no-rpath \
    -shared \
    -nomake examples \
    -nomake tests \
		-skip qtlocation \
    -no-strip \
		-qtlibinfix AndroidEmu \
		-qt-xcb \
		-no-use-gold-linker \
    -platform linux-clang-libc++ \
		-opengl es2 \
		-recheck-all \
		QMAKE_CXXFLAGS+=--gcc-toolchain=/home/android/wd/prebuilts/gcc-5 \
		-v && \
	make -j6 V=1 module-qtbase module-qtsvg module-qtimageformats module-qtwebengine && \
	make V=1 module-qtbase-install_subtargets module-qtsvg-install_subtargets module-qtimageformats-install_subtargets module-qtwebengine-install_subtargets

include.system/QtCore/qconfig.h:
	ln -svf include include.system

clean:
	rm -rf bin/ doc/ include/ include.system lib/ mkspecs/ plugins/ phrasebooks/ qml/

distclean: clean
	rm -rf ../../../wd/qt-build

all: lib/libQt5CoreAndroidEmu.so include.system/QtCore/qconfig.h
