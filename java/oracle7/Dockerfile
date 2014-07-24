FROM debian:7.6
MAINTAINER Brad Murray <wyaeld@gmail.com> <brad.murray@datacom.co.nz>

ENV JAVA_VERSION 7
ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main"\
  | tee /etc/apt/sources.list.d/webupd8team-java.list && \
  echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main"\
  | tee -a /etc/apt/sources.list.d/webupd8team-java.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

RUN apt-get update && \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | \
  /usr/bin/debconf-set-selections && \
  apt-get -y --no-install-recommends install oracle-java7-installer && \
  apt-get clean

RUN update-alternatives --display java 

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle