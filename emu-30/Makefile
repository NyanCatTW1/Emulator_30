.PHONY: all
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

	cp -a build.sh wd/
	docker run -it -v "$$(pwd)/prebuilts:/home/android/wd/prebuilts" -v "$$(pwd)/wd:/home/android/wd" android-rebuilds:emu-$(VERSION) /home/android/wd/build.sh

clean:
	cd ${ROOT_DIR} && \
	rm -rf wd/ && \
	rm -rf prebuilts/wd/

distclean: clean
	cd ${ROOT_DIR} && \
	rm -rf prebuilts/tarballs/
