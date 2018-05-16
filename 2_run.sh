#!/bin/sh

# start database first, wait a bit, then start the rest

docker-compose -f docker-compose.yml up -d database
sleep 5
docker-compose -f docker-compose.yml up
