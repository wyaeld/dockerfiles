# Derived from @discordianfish work on docker-backup, with patches by @amtrak
# rebased onto @docker-library golang base, which is smaller than ubuntu.  Saved about 200mb

FROM golang:1.3
MAINTAINER Brad Murray <wyaeld@gmail.com> <brad.murray@datacom.co.nz>

ADD        . /docker-backup
WORKDIR    /docker-backup
RUN        go get -d && go build
ENTRYPOINT [ "./docker-backup" ]