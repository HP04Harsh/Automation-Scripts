#!/bin/bash
# Run using Bash

FILE="$HOME/Documents/important.txt"
# File to monitor

BACKUP_DIR="$HOME/file_backups"
# Folder to store backups

mkdir -p "$BACKUP_DIR"
# Create backup folder if not exists

while true; do
# Infinite loop to keep checking

    inotifywait -e modify "$FILE"
    # Wait until file is modified (requires inotify-tools)

    cp "$FILE" "$BACKUP_DIR/important-$(date +%Y%m%d%H%M%S).txt"
    # Create timestamp backup copy

    echo "Backup created because file was modified."
done