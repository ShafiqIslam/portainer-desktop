#!/usr/bin/env bash

docker volume inspect portainer_data > /dev/null 2>&1
if [ $? -ne 0 ]; then
    docker volume create portainer_data
fi

docker inspect portainer > /dev/null 2>&1
if [ $? -ne 0 ]; then
    docker run -d -p 8000:8000 -p 9000:9000 --name portainer \
        --restart=always \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v portainer_data:/data \
        portainer/portainer-ce:2.9.3
    sleep 2
fi
