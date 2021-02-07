FROM ubuntu:focal
MAINTAINER Sylvain Beucler <beuc@beuc.net>
COPY dependencies.sh /usr/src/dependencies.sh
RUN /usr/src/dependencies.sh

RUN useradd builder -m -s /bin/bash
USER builder
RUN mkdir /home/builder/wd/
WORKDIR /home/builder/wd/

COPY repo.sh /home/builder/repo.sh
RUN /home/builder/repo.sh

CMD /bin/bash
