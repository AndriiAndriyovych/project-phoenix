#!/bin/bash

APP_DIR="$HOME/phoenix_app"
CONFIG_DIR="$APP_DIR/config"
DATA_DIR="$APP_DIR/data"
lOGS_DIR="$APP_DIR/logs"
SECRET_FILE"$CONFIG_DIR/secret.key"
LOG_FILE="$LOGS_DIR/status.log"

if [ -d "$APP_DIR" ]; then
	echo "Directory already exists"
	exit 1 
fi

mkdir -p "$APP_DIR"
