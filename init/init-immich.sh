#!/bin/bash

echo "Creating immich folder..."
mkdir ./immich-app

echo "Downloading immich docker-compose.yml and .env files..."
wget -O docker-compose.yml https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml -P ~/immich-app
wget -O .env https://github.com/immich-app/immich/releases/latest/download/example.env -P ~/immich-app

