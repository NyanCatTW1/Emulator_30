.PHONY: all clean distclean clean-tarballs
VERSION=30
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

all:
	docker build -t android-rebuilds:emu-$(VERSION) .

	if [ ! -e wd/ ]; then mkdir wd/; fi
	chown 1000:1000 wd/

	make -C ../downloader/
	cp -a download.sh wd/
	docker run -v "$$(pwd)/wd:/home/android/wd" android-rebuilds:downloader /home/android/wd/download.sh
	
	prebuilts/download.sh
	docker run -v "$$(pwd)/prebuilts:/home/android/prebuilts" android-rebuilds:emu-$(VERSION) /home/android/prebuilts/build.sh

	if patch -p0 -N --dry-run --silent < Clang-libPath-fix.patch 2>/dev/null; then \
		patch -p0 -N < Clang-libPath-fix.patch; \
	fi;

	cp -a build.sh wd/
	docker run -it -v "$$(pwd)/prebuilts:/home/android/wd/prebuilts" -v "$$(pwd)/wd:/home/android/wd" android-rebuilds:emu-$(VERSION) /home/android/wd/build.sh

clean:
	@${MAKE} -C prebuilts clean

distclean: clean
	@${MAKE} -C prebuilts distclean
	rm -rf wd/ && \
  rm -rf prebuilts/wd/

clean-tarballs:
	rm -rf prebuilts/tarballs/
