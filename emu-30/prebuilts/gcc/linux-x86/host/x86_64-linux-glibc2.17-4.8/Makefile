.PHONY: all clean distclean
VERSION=30
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/x86_64-linux-ld:
	mkdir -p ../../../../wd/x86_64-linux-glibc2.17-4.8
	cd ../../../../wd/x86_64-linux-glibc2.17-4.8 && \
	cp -av ../../tarballs/x86_64-linux-glibc2.17-4.8/{build-raring-multilib-toolchain.sh,build-with-previous-gcc.sh,sysroot-patches,toolchain-patches} . && \
	./build-raring-multilib-toolchain.sh --git-date=2018-12-14T00:00:00+0000 --work-dir=/home/builder/wd/prebuilts/wd/x86_64-linux-glibc2.17-4.8 --verbose --verbose -j6 && \
	cp -av 1/x86_64-linux-glibc2.17-4.8/* ${ROOT_DIR}

clean:
	rm -rf bin build-raring-multilib-toolchain.sh build-with-previous-gcc.sh include lib libexec PACKAGE_SOURCES sysroot sysroot-patches toolchain-patches TOOLCHAIN_SOURCES x86_64-linux

distclean: clean
	rm -rf ../../../../wd/x86_64-linux-glibc2.17-4.8

all: bin/x86_64-linux-ld
