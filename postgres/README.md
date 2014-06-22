Postgres containers
=================

These containers are publically available as automated builds at
```
wyaeld/postgres:9.3
wyaeld/postgres:9.4
wyaeld/postgres-data
```

`wyaeld/postgres:9.3` is the one tagged as `latest` since it is stable
`wyaeld/postgres:9.4` is built from the beta1 release of 9.4

PostgreSQL for Docker.

    $ docker run -d -p 5432:5432 -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=oe9jaacZLbR9pN -e POSTGRESQL_DB=test wyaeld/postgres
    da809981545f
    $ psql -h localhost -U test test
    Password for user test:
    psql (9.3.4, server 9.3.4)
    Type "help" for help.

    test=#

(Example assumes PostgreSQL client is installed on Docker host.)


## Environment variables

 - `POSTGRESQL_DB`: A database that is automatically created if it doesn't exist. Default: `docker`
 - `POSTGRESQL_USER`: A user to create that has access to the database specified by `POSTGRESQL_DB`. Default: `docker`
 - `POSTGRESQL_PASS`: The password for `POSTGRESQL_USER`. Default: `docker`


