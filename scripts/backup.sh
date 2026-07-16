#!/bin/bash

# This is a comment line

echo "This is a daily backup script for servers folders!"
echo "Current date and time: $(date)"

        DIR_NAME=$(date +'%Y-%m-%d_%H-%M-%S')

sudo mkdir -p "/daily_backups/$DIR_NAME"
sudo cp -r "/etc/nginx"  "/daily_backups/$DIR_NAME"
sudo cp -r "/var/www"  "/daily_backups/$DIR_NAME"
echo "Directory has been created successfully with today's date and time"