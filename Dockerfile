FROM postgres:11.6-alpine

COPY docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/
