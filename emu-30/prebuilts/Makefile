.PHONY: all
SUBDIRS = cmake/linux-x86 gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8

all: cmake/linux-x86/bin/cmake gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8/bin/x86_64-linux-ld

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
