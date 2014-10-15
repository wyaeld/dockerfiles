Postgres containers
=================

These containers are publically available as automated builds at
```
wyaeld/postgres:9.3 (based on ubuntu:trusty)
wyaeld/postgres:9.4 (based on debian:7.6, now updated to beta3)
wyaeld/postgres:data  (based on busybox:ubuntu-14.04)
```

`wyaeld/postgres:9.3` is the one tagged as `latest` since it is stable

`wyaeld/postgres:9.4` is built from the beta1 release of 9.4

PostgreSQL for Docker.

First setup a data container

    $ docker run --name app_data wyaeld/postgres:data

    $ docker run -d -p 5432:5432 --volumes-from app_data wyaeld/postgres
    da809981545f

Or if you want to control the credentials

    $ docker run -d -p 5432:5432 --volumes-from app_data -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=oe9jaacZLbR9pN -e POSTGRESQL_DB=test wyaeld/postgres`
    da809981545f

Locale will default to en_US.UTF-8.  You can choose another locale e.g.

    $ docker run -d -p 5432:5432 -e LOCALE=en_NZ.UTF-8 --volumes-from app_data wyaeld/postgres

Then connect in 

    $ psql -h localhost -U docker docker
    Password for user docker:
    psql (9.3.4, server 9.3.4)
    Type "help" for help.

    docker=#

(Example assumes PostgreSQL client is installed on Docker host.)


## Environment variables

 - `POSTGRESQL_DB`: A database that is automatically created if it doesn't exist. Default: `docker`
 - `POSTGRESQL_USER`: A user to create that has access to the database specified by `POSTGRESQL_DB`. Default: `docker`
 - `POSTGRESQL_PASS`: The password for `POSTGRESQL_USER`. Default: `docker`


