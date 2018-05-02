#!/bin/sh

docker build -t gpn-snake:gameserver-1.0.0 -f gameserver/Dockerfile .
docker build -t gpn-snake:relayserver-1.0.0 -f relayserver/Dockerfile .
docker build -t gpn-snake:website-1.0.0 -f website/Dockerfile .
