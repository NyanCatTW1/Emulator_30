.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

clang-r399163b/bin/clang:
	mkdir -p ../../../wd/clang-build
	cd ../../../wd/clang-build && \
	cmake -DLLDB_DISABLE_CURSES=NO -DLLVM_ENABLE_TERMINFO=NO -DCMAKE_INSTALL_PREFIX=${ROOT_DIR}/clang-r399163b -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;"	../../tarballs/llvm-project/llvm && \
	make -j6 && \
	make install

clean:
	rm -rf clang-r399163b

distclean: clean
	rm -rf ../../../wd/clang-build

all: clang-r399163b/bin/clang
