#!/bin/sh
set -ex
mkdir -p seatable_home/seatable-data
mkdir -p seatable_home/mysql-data
docker-compose up -d
sleep 60
docker exec -d seatable /shared/seatable/scripts/seatable.sh start
exit 0
