FROM alpine:latest
MAINTAINER Iskakov Zhanat <iskakov_zhanat@mail.ru>
ADD golang-gin /usr/bin/golang-gin
ENTRYPOINT ["golang-gin"]