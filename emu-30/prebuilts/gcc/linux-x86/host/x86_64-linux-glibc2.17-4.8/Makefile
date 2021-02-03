.PHONY: all
VERSION=30
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/x86_64-linux-ld:
	mkdir -p ../../../../wd/x86_64-linux-glibc2.17-4.8
	cd ../../../../wd/x86_64-linux-glibc2.17-4.8 && \
	cp -av ../../tarballs/x86_64-linux-glibc2.17-4.8/{build-raring-multilib-toolchain.sh,sysroot-patches,toolchain-patches} . && \
	./build-raring-multilib-toolchain.sh --bootstrap --git-date=2018-12-14T00:00:00+0000 --work-dir=/home/android/prebuilts/wd/x86_64-linux-glibc2.17-4.8 --verbose

clean:
	rm -rf ../../../../wd/x86_64-linux-glibc2.17-4.8

distclean: clean
	rm -rf ../../../../tarballs/x86_64-linux-glibc2.17-4.8

all: bin/x86_64-linux-ld
