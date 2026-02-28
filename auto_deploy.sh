#!/bin/bash
# Run using Bash

APP_DIR="$HOME/myapp"

cd "$APP_DIR" || exit
# Go to project folder

git pull
# Get latest code

npm install
# Install dependencies (if Node project)

pm2 restart all
# Restart application

echo "Deployment completed successfully."