#!/bin/bash

echo "Installing zip and unzip..."
sudo apt install zip unzip
echo "Installing cron..."
sudo apt install cron

# Download and install rclone
echo "Downloading rclone..."
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cd rclone-*-linux-amd64

# Move rclone binary to /usr/bin and set permissions
sudo cp rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone

# Create rclone config directory
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb
echo "Done installing rclone."

source ~/.bashrc

mkdir ~/.config
mkdir ~/.config/rclone

cp -r ./rclone-config/ ~/.config/rclone/rclone.conf