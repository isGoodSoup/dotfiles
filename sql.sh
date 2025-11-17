#!/usr/bin/env bash
source .env
docker container start oracle21
docker exec -i oracle21 sqlplus "$ORACLE_USER/$ORACLE_PASSWORD@//localhost:1521/XEPDB1"
