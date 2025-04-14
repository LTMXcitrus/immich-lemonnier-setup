#!/bin/bash

echo "Installing Nginx..."
sudo apt update
sudo apt install nginx
echo "Nginx installed."

echo "############################################################"

echo "Configuring Nginx..."
sudo mv ~/init/nginx-config/immich.conf /etc/nginx/sites-available/immich.conf
sudo ln -s /etc/nginx/sites-available/immich.conf /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
echo "Nginx configured."

echo "############################################################"

echo "Configuring SSL..."
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx -d photos.lemonnier.io