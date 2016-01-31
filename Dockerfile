FROM ubuntu:trusty

MAINTAINER Mohab Usama <mohab.usama@gmail.com>

RUN apt-get update

RUN apt-get install -y unzip wget

RUN cd /usr/local/ && wget https://github.com/mohabusama/ledisdb-docker/files/111307/ledis-bin.zip && unzip ledis-bin.zip

ADD ./etc/ /etc/

EXPOSE 6380

CMD /usr/local/bin/ledis-server -config=/etc/ledis.conf
