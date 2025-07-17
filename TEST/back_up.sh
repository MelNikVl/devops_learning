#!/bin/bash
BACKUP_DIR="/var/backups/configs_$(date +%F)"
mkdir -p "$BACKUP_DIR"

cp /etc/nginx/nginx.conf "$BACKUP_DIR"
cp -r /etc/ngrafana/* "$BACKUP_DIR"

echo "Backup saved to $BACKUP_DIR"
