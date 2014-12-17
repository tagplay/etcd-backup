FROM golang:1.3-onbuild
MAINTAINER Jón Grétar Borgþórsson <jongretar@jongretar.com>

RUN mkdir /data
VOLUME /data
CMD /go/src/app/backup.sh
