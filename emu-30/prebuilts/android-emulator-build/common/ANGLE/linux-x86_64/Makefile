.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libangle_st.so:
	cp -av ../../../../tarballs/angle ../../../../wd/angle-build
	cd ../../../../wd/angle-build && \
	export PATH="$$PATH:/home/builder/wd/prebuilts/depot_tools" && \
	autoninja -C out/Release && \
	echo "ANGLE install stub"

clean:
	rm -rf include/ lib/

distclean: clean
	rm -rf ../../../../wd/angle-build

all: lib/libangle_st.so
