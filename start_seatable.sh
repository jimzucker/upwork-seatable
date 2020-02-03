#!/bin/sh
set -ex
mkdir -p seatable_home
mkdir -p seatable_home/seatable-data
mkdir -p seatable_home/mysql-data
docker-compose up -d

sleep 60
docker exec -d seatable /shared/seatable/scripts/seatable.sh start

set +x
echo "
---------------------------------------------------------------------
System is ready, remmeber first time you have to setup a super user on a new installation
docker exec -it seatable /shared/seatable/scripts/seatable.sh superuser
---------------------------------------------------------------------
"
exit 0
