# postgres-dump-restore

> Postgres that copies another remote postgres on startup

[![Build Status](https://travis-ci.org/futpib/postgres-dump-restore.svg?branch=master)](https://travis-ci.org/futpib/postgres-dump-restore) [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/futpib/postgres-dump-restore)](https://hub.docker.com/r/futpib/postgres-dump-restore/tags)

## Example

```bash
docker run \
    -p 5432:5432 \
    -e ORIGIN_HOST=example.com \
    -e ORIGIN_DB=postgres \
    -e ORIGIN_USER=postgres \
    -e ORIGIN_PASSWORD=postgres \
    futpib/postgres-dump-restore:master
```
