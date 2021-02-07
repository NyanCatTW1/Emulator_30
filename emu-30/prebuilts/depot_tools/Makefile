.PHONY: all clean distclean
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

gclient:
	cp -av ../tarballs/depot_tools/{*,.cipd_impl.ps1,.style.yapf,.vpython,.vpython3} .

clean:
	ls | grep -Ev "Makefile|ninja-linux32|ninja-linux64" | xargs rm -r

distclean: clean

all: gclient
