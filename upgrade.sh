#!/bin/sh

sh export.sh
mkdir -p logs
docker pull docker.pkg.github.com/propulsioncarriere/propulsetacarriere/app:latest
docker pull docker.pkg.github.com/propulsioncarriere/propulsetacarriere/nginx:latest
docker-compose build --pull
docker-compose up -d --force-recreate
docker-compose exec app php artisan migrate
docker-compose exec app php artisan init:all
