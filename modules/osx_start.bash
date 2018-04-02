#!/usr/bin/env bash

# Start postgresql server
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

# Start redis server
redis-server --daemonize yes
