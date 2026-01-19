#!/bin/bash

APP_DIR="$HOME/phoenix_app"
CONFIG_DIR="$APP_DIR/config"
DATA_DIR="$APP_DIR/data"
LOGS_DIR="$APP_DIR/logs"
SECRET_FILE="$CONFIG_DIR/secret.key"
LOG_FILE="$LOGS_DIR/status.log"

if [ -d "$APP_DIR" ]; then
	echo "Directory already exists"
	exit 1 
fi
#added test comment for branch dev-setup
mkdir -p "$APP_DIR"
for folder in config data logs 
do
mkdir -p "$APP_DIR/$folder"
done
touch "$SECRET_FILE"
chmod 600 "$SECRET_FILE"
echo "Security: Created secret.key with restricted permissions (600)."

echo "Check date: $(date)" > "$LOG_FILE"
echo "Nginx status: $(systemctl is-active nginx)" >> "$LOG_FILE"
