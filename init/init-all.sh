#!/bin/bash

bash ./init-rclone.sh
bash ./init-immich.sh

0 3 * * * /bin/bash /home/debian/backup-gdrive.sh