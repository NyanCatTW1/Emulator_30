.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

bin/ninja:
	mkdir -p ../../wd && \
	cd ../../wd && \
	rm -rf ninja && \
	cp -av ../tarballs/ninja . && \
	cd ninja && \
	python ./configure.py --bootstrap && \
	cp -v ninja ${ROOT_DIR}

clean:
	rm -f ninja

distclean: clean
	rm -rf ../../wd/ninja

all: bin/ninja
