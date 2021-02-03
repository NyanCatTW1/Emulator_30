FROM ubuntu:focal
MAINTAINER Sylvain Beucler <beuc@beuc.net>
COPY dependencies.sh /usr/src/dependencies.sh
RUN /usr/src/dependencies.sh

RUN useradd android -m -s /bin/bash
USER android
RUN mkdir /home/android/wd/
WORKDIR /home/android/wd/

COPY repo.sh /home/android/repo.sh
RUN /home/android/repo.sh

CMD /bin/bash
