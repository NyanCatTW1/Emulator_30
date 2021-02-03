.PHONY: all
VERSION=30

all:
	docker build -t android-rebuilds:emu-$(VERSION) .

	if [ ! -e wd/ ]; then mkdir wd/; fi
	chown 1000:1000 wd/

	make -C ../downloader/
	cp -a download.sh wd/
	docker run -v "$$(pwd)/wd:/home/android/wd" android-rebuilds:downloader /home/android/wd/download.sh

	cp -a build.sh wd/
	docker run -it -v "$$(pwd)/wd:/home/android/wd" android-rebuilds:emu-$(VERSION) /home/android/wd/build.sh
