.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libgbm.so:
	mkdir -p ../wd/libgbm-build && \
	cd ../wd/libgbm-build && \
	../../tarballs/mesa-17.0.7/configure --with-gallium-drivers= --with-dri-drivers= --with-egl-platforms=drm --disable-glx && \
	make -C src/mesa/drivers/dri/common && \
	make -C src/loader libloader.la && \
	make -C src/gbm && \
	mkdir -p ${ROOT_DIR}/lib && \
	cp -v src/gbm/libgbm.la ${ROOT_DIR}/lib && \
	cp -v lib/* ${ROOT_DIR}/lib

include/gbm.h:
	mkdir -p ${ROOT_DIR}/include
	cp ../tarballs/mesa-17.0.7/src/gbm/main/gbm.h include

clean:
	rm -f lib/ include/

distclean: clean
	rm -rf ../../wd/libgbm-build

all: lib/libgbm.so include/gbm.h
