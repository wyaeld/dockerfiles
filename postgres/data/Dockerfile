# Custom container for storage and backup of Postgres data

FROM busybox:ubuntu-14.04
MAINTAINER Brad Murray <wyaeld@gmail.com> <brad.murray@datacom.co.nz>

RUN mkdir -p /var/lib/postgresql &&\
    mkdir -p /var/log/postgresql

VOLUME ["/var/log/postgresql", "/var/lib/postgresql"]
