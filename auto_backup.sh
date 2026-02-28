#!/bin/bash
# Run using Bash

SOURCE="$HOME/Documents"
# Folder we want to back up

BACKUP="$HOME/Backup"
# Where backup files will be stored

mkdir -p "$BACKUP"
# Create Backup folder if it doesn't exist

DATE=$(date +"%Y-%m-%d")
# Get today's date in Year-Month-Day format

tar -czf "$BACKUP/backup-$DATE.tar.gz" "$SOURCE"
# Create a compressed backup file with today's date

echo "Backup created successfully on $DATE."
# Print success message