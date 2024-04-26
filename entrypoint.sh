#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
# rm -f /myapp/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z db 5432; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi



exec "$@"