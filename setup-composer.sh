#!/bin/bash

BOOT2DOCKER_IP=`boot2docker ip`
echo boot2docker ip: $BOOT2DOCKER_IP

sed "s/BOOT2DOCKER_IP/${BOOT2DOCKER_IP}/g" docker-compose.yml.template > docker-compose.yml

docker-compose up -d
