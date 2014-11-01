#!/bin/bash

export LANG=${LOCALE:-"en_US.UTF-8"}
export LANGUAGE=$LANG

# We need to uncomment the desired locale from /etc/locale.gen
echo "Setting LOCALE to $LANG"
sed -i "s/# $LANG/$LANG/gI" /etc/locale.gen && locale-gen

export POSTGRESQL_USER=${POSTGRESQL_USER:-"docker"}
export POSTGRESQL_PASS=${POSTGRESQL_PASS:-"docker"}
export POSTGRESQL_DB=${POSTGRESQL_DB:-"docker"}
export POSTGRESQL_TEMPLATE=${POSTGRESQL_TEMPLATE:-"DEFAULT"}

export POSTGRESQL_BIN=/usr/lib/postgresql/9.3/bin/postgres
export POSTGRESQL_CONFIG_FILE=/etc/postgresql/9.3/main/postgresql.conf
export POSTGRESQL_DATA=/var/lib/postgresql/9.3/main

eval "$@"