FROM ubuntu:trusty
MAINTAINER Brad Murray <wyaeld@gmail.com> <brad.murray@datacom.co.nz>

ENV RUBY_VERSION 2.1.2
ENV RUBY_INSTALL_VERSION 0.4.3

# Chris Lea's Nodejs
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C7917B12 &&\
    echo deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main > /etc/apt/sources.list.d/nodejs.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    nano \
    curl \
    wget \
    git-core \
    ca-certificates \
    build-essential \
    nodejs && \
    apt-get clean && \
    rm -Rf /var/cache/apt

# Ruby 2.1.2 stable via ruby-install, cleaned up the ruby src afterwards (src is 350mb)
RUN echo 'gem: --no-document' >> /usr/local/etc/gemrc &&\
    wget -O /tmp/ruby-install.tar.gz https://github.com/postmodern/ruby-install/archive/v$RUBY_INSTALL_VERSION.tar.gz &&\
    tar -xzvf /tmp/ruby-install.tar.gz -C /opt && rm /tmp/ruby-install.tar.gz &&\
    /opt/ruby-install-$RUBY_INSTALL_VERSION/bin/ruby-install -i /usr/local/ ruby $RUBY_VERSION -- --disable-install-rdoc &&\
    echo 'Cleaning up Ruby src' &&\
    rm /usr/local/src/ruby-$RUBY_VERSION.tar.bz2 &&\
    rm -rf /usr/local/src/ruby-$RUBY_VERSION &&\
    gem update --system &&\
    gem install bundler


