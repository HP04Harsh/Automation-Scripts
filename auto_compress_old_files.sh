#!/bin/bash
# Run using Bash

TARGET="$HOME/Documents"
# Folder where files are stored

DAYS=30
# Files older than 30 days will be compressed

cd "$TARGET" || exit
# Move to target folder safely

find . -type f -mtime +$DAYS | while read FILE; do
# Find files older than 30 days
# Process each file one by one

    gzip "$FILE"
    # Compress the file to save storage

    echo "Compressed: $FILE"
done

echo "Old files compression completed."