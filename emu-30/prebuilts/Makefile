.PHONY: all
SUBDIRS = cmake/linux-x86

all: cmake/linux-x86/bin/cmake

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
