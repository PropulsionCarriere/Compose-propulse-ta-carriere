#!/bin/sh
mkdir -p export
date=$(date "+%d-%m-%y--%H:%M:%S")
docker-compose run --rm backup tar -cvf /export/database-$date.tar /var/lib/mysql
docker-compose run --rm backup chown backers:backers /export/database-$date.tar
docker-compose run --rm backup tar -cvf /export/uploads-$date.tar /var/www/storage/public
docker-compose run --rm backup chown backers:backers /export/uploads-$date.tar