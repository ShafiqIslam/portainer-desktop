#!/usr/bin/env bash

curl -O http://dev-sheba.xyz:8642/repo_signing.key
sudo apt-key add repo_signing.key

sudo bash -c 'echo "deb [arch=amd64] http://dev-sheba.xyz:8642/portainer-desktop stretch main" > /etc/apt/sources.list.d/portainer-desktop.list'

sudo apt-get update --allow-insecure-repositories
