FROM ubuntu:trusty
MAINTAINER Brad Murray <wyaeld@gmail.com> <brad.murray@datacom.co.nz>

ENV DEBIAN_FRONTEND noninteractive
ENV RUBY_VERSION 2.2
ENV RUBY_VERSION_PATCH 2.2.0

# Chris Lea's Nodejs
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 136221EE520DDFAF0A905689B9316A7BC7917B12 &&\
    echo deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main > /etc/apt/sources.list.d/nodejs.list

# Brightbox ruby-ng
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 80F70E11F0F0D5F10CB20E62F5DA5F09C3173AA6 &&\
    echo deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main > /etc/apt/sources.list.d/ruby.list

COPY gemrc.yml /etc/gemrc

RUN apt-get update && apt-get install -y --no-install-recommends \
    nano \
    curl \
    wget \
    git-core \
    build-essential \
    ca-certificates \
    nodejs \
    ruby$RUBY_VERSION \
    ruby$RUBY_VERSION-dev \
    && rm -rf /var/lib/apt/lists/*

RUN gem update --system && gem install bundler
