#!/bin/sh
STRATDEVOPS_SEATABLE_HOME=`pwd`
export STRATDEVOPS_SEATABLE_HOME

STRATDEVOPS_SEATABLE_MYSQL=opt/seatable/mysql-data
STRATDEVOPS_SEATABLE_DATA=opt/seatable/seatable-data
mkdir -p $STRATDEVOPS_SEATABLE_MYSQL
mkdir -p $STRATDEVOPS_SEATABLE_DATA

docker-compose up -d

set +x
echo "
1. Verify server started with:
docker logs seatable

2. Wait 1 min then run:
docker exec -d seatable /shared/seatable/scripts/seatable.sh start

---------------------------------------------------------------------
3. System is ready, remmeber first time you have to setup a super user on a new installation
docker exec -it seatable /shared/seatable/scripts/seatable.sh superuser
---------------------------------------------------------------------
"
exit 0
