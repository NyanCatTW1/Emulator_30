.PHONY: all
SUBDIRS = cmake/linux-x86 gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8 ninja/linux-x86 clang/host/linux-x86 gcc-5 android-emulator-build/qemu-android-deps/linux-x86_64 libepoxy libgbm android-emulator-build/common/virglrenderer/linux-x86_64

all: cmake/linux-x86/bin/cmake gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8/bin/x86_64-linux-ld ninja/linux-x86/ninja clang/host/linux-x86/clang-r399163b/bin/clang gcc-5/bin/gcc android-emulator-build/qemu-android-deps/linux-x86_64/lib/libglib-2.0.a android-emulator-build/qemu-android-deps/linux-x86_64/lib/libpixman-1.a libepoxy/include/epoxy/gl_generated.h libgbm/lib/libgbm.so libgbm/include/gbm.h android-emulator-build/common/virglrenderer/linux-x86_64/lib/libvirglrenderer.a

clean:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean; \
	done

distclean:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir distclean; \
	done
	rm -rf wd/

cmake/linux-x86/bin/cmake:
	@$(MAKE) -C cmake/linux-x86

gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8/bin/x86_64-linux-ld:
	@$(MAKE) -C gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8

ninja/linux-x86/ninja:
	@$(MAKE) -C ninja/linux-x86

gcc-5/bin/gcc:
	@$(MAKE) -C gcc-5

clang/host/linux-x86/clang-r399163b/bin/clang: cmake/linux-x86/bin/cmake gcc-5/bin/gcc
	@$(MAKE) -C clang/host/linux-x86

android-emulator-build/qemu-android-deps/linux-x86_64/lib/libglib-2.0.a:
	@$(MAKE) -C android-emulator-build/qemu-android-deps/linux-x86_64 lib/libglib-2.0.a

android-emulator-build/qemu-android-deps/linux-x86_64/lib/libpixman-1.a:
	@$(MAKE) -C android-emulator-build/qemu-android-deps/linux-x86_64 lib/libpixman-1.a

libepoxy/include/epoxy/gl_generated.h:
	@$(MAKE) -C libepoxy

libgbm/lib/libgbm.so:
	@$(MAKE) -C libgbm lib/libgbm.so

libgbm/include/gbm.h:
	@$(MAKE) -C libgbm include/gbm.h

android-emulator-build/common/virglrenderer/linux-x86_64/lib/libvirglrenderer.a: libepoxy/include/epoxy/gl_generated.h libgbm/lib/libgbm.so libgbm/include/gbm.h
	@$(MAKE) -C android-emulator-build/common/virglrenderer/linux-x86_64
