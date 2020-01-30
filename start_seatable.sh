#!/bin/sh
STRATDEVOPS_SEATABLE_HOME=`pwd`
export STRATDEVOPS_SEATABLE_HOME

STRATDEVOPS_SEATABLE_MYSQL=opt/seatable/mysql-data
STRATDEVOPS_SEATABLE_DATA=opt/seatable/seatable-data
mkdir -p $STRATDEVOPS_SEATABLE_MYSQL
mkdir -p $STRATDEVOPS_SEATABLE_DATA

docker-compose up -d
exit 0
