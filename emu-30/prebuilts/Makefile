.PHONY: all
SUBDIRS = cmake/linux-x86 gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8 ninja/linux-x86 clang/host/linux-x86 gcc-5

all: cmake/linux-x86/bin/cmake gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8/bin/x86_64-linux-ld ninja/linux-x86/ninja clang/host/linux-x86/clang-r399163b/bin/clang gcc-5/bin/gcc

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
