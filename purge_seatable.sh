#!/bin/sh
set -x

docker-compose stop
docker-compose rm -f

echo "WARNING: are you sure you want to delete all data? Y/N"
read ANS
if [ "$ANS" = "Y" ]
then
	echo "REMOVING seatable_home"
	rm -fr seatable_home
else
	echo "seatable_home NOT REMOVED!"
fi

exit 0
