#!/bin/bash

mkdir ./immich-app

wget -O docker-compose.yml https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml -P ~/immich-app
wget -O .env https://github.com/immich-app/immich/releases/latest/download/example.env -P ~/immich-app

