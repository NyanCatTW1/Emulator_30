FROM ubuntu:trusty-20191217
MAINTAINER Sylvain Beucler <beuc@beuc.net>
COPY dependencies.sh /usr/src/dependencies.sh
RUN /usr/src/dependencies.sh

RUN useradd android -m -s /bin/bash
USER android
RUN mkdir /home/android/wd/
WORKDIR /home/android/wd/

CMD /bin/bash
