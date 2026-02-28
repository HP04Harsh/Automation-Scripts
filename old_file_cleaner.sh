#!/bin/bash
# Run using Bash

TARGET="$HOME/Downloads"
# Folder to clean

DAYS=7
# Files older than 7 days will be removed

find "$TARGET" -type f -mtime +$DAYS -exec rm {} \;
# find searches for files
# -type f means only files
# -mtime +7 means older than 7 days
# -exec rm removes them

echo "Files older than $DAYS days have been deleted."