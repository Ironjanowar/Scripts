#! /bin/bash

echo "docker-compose stop"
docker-compose stop
echo -e "\ndocker-compose rm --all"
docker-compose rm --all
echo -e "\ndocker-compose up -d"
docker-compose up -d
