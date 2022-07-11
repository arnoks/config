#!/usr/bin/bash

sudo dnf install -y moby-engine
sudo gpasswd -a vn401 docker
sudo systemctl set-environment http_proxy=$http_proxy
sudo systemctl set-environment https_proxy=$http_proxy
sudo systemctl set-environment no_proxy=$no_proxy
sudo systemctl enable docker.service
sudo systemctl start docker.service
mkdir -p build
touch build/moby_config

