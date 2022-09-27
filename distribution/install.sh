#!/usr/bin/env bash

docker volume create portainer_data

docker run -d -p 8000:8000 -p 9000:9000 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer-ce:2.9.3

curl https://raw.githubusercontent.com/ShafiqIslam/portainer-desktop/main/distribution/portainer-desktop_1.0.0_amd64.deb -o /tmp/portainer-desktop_1.0.0_amd64.deb

sudo dpkg -i /tmp/portainer-desktop_1.0.0_amd64.deb 