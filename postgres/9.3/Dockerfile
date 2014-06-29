FROM ubuntu:trusty
MAINTAINER Brad Murray <wyaeld@gmail.com> <brad.murray@datacom.co.nz>

ENV POSTGRES_VERSION 9.3

# Add the PostgreSQL PGP key to verify their Debian packages.
# It should be the same key as https://www.postgresql.org/media/keys/ACCC4CF8.asc 
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8 && \
  echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main $POSTGRES_VERSION" > /etc/apt/sources.list.d/pgdg.list && \
  apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -qy install language-pack-en && \
    export LANGUAGE=en_US.UTF-8 && \
    export LANG=en_US.UTF-8 && \
    export LC_ALL=en_US.UTF-8 && \
    DEBIAN_FRONTEND=noninteractive locale-gen en_US.UTF-8 &&\
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales &&\
    update-locale LANG=en_US.UTF-8

RUN LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libpq5 \
    postgresql-$POSTGRES_VERSION \
    postgresql-client-$POSTGRES_VERSION \
    postgresql-contrib-$POSTGRES_VERSION && \
    apt-get clean && \
    rm -Rf /var/cache/*

# Adjust PostgreSQL configuration so that remote connections to the
# database are possible. 
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/$POSTGRES_VERSION/main/pg_hba.conf && \
    echo "listen_addresses='*'" >> /etc/postgresql/$POSTGRES_VERSION/main/postgresql.conf

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

# Note: This container has no native volume, its expected to run with --volumes-from another

EXPOSE 5432

CMD ["/usr/local/bin/run"]