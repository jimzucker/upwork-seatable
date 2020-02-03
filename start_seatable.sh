#!/bin/sh
docker-compose up -d
sleep 60
docker exec -d seatable /shared/seatable/scripts/seatable.sh start
exit 0
