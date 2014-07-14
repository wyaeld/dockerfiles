FROM ubuntu:trusty

MAINTAINER Brad Murray <wyaeld@gmail.com> <brad.murray@datacom.co.nz>

RUN apt-get update && apt-get install -y --no-install-recommends \
    nano \
    curl \
    wget \
    git-core \
    ca-certificates \
    build-essential \
    openjdk-7-jdk && \
    apt-get clean && \
    rm -Rf /var/cache/apt

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# RUN update-alternatives --auto java    