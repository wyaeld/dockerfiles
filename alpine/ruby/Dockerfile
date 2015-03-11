FROM gliderlabs/alpine:edge

ENV RUBY_VERSION 2.1.5-r1
ENV POSTGRES_VERSION 9.4.1-r0

# enable testing repos
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN echo "http://aports.marscloud.co.nz/alpine/edge/datacom" >> /etc/apk/repositories
COPY wyaeld-54fb9c32.rsa.pub /etc/apk/keys/wyaeld-54fb9c32.rsa.pub

RUN apk update && apk add \
  ruby=$RUBY_VERSION \
  postgresql-client=$POSTGRES_VERSION \
  ruby-pg \
  ruby-nokogiri \
  ruby-json \
  ruby-bcrypt \
  ruby-rails \
  ruby-bundler \
  ruby-timers \
  git \
  openssl \
  ca-certificates 

#RUN apk add gcc

COPY gemrc.yml /root/.gemrc
ENV PATH $PATH:/usr/lib/ruby/gems/2.1.0/bin

COPY Gemfile .

RUN bundle install --without development test

# COPY 
# && apk add nodejs=$NODE_VERSION mysql-client=$MYSQL_CLIENT_VERSION
# RUN apk-install nodejs mysql-clientj