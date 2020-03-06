#!/usr/bin/env sh

set -xe

export ORIGIN_PORT="${ORIGIN_PORT:-5432}"

: "${ORIGIN_HOST:?ORIGIN_HOST is required}"
: "${ORIGIN_USER:?ORIGIN_USER is required}"
: "${ORIGIN_PASSWORD:?ORIGIN_PASSWORD is required}"
: "${ORIGIN_DB:?ORIGIN_DB is required}"

POSTGRES_HOST=/var/run/postgresql/
POSTGRES_PORT=5432

echo "Loading dump..."

PGPASSWORD="${ORIGIN_PASSWORD}" \
pg_dump \
    --host="${ORIGIN_HOST}" \
    --port="${ORIGIN_PORT}" \
    --username="${ORIGIN_USER}" \
    "${ORIGIN_DB}" \
    | \
    psql \
        --host "${POSTGRES_HOST}" \
        --port "${POSTGRES_PORT}" \
        --user "${POSTGRES_USER}" \
        --dbname "${POSTGRES_DB}"

