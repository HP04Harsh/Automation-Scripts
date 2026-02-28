#!/bin/bash
# Run using Bash

SCRIPT_PATH="$HOME/auto_backup.sh"
# Path of backup script

(crontab -l 2>/dev/null; echo "0 2 * * * $SCRIPT_PATH") | crontab -
# Add cron job:
# 0 2 * * * means every day at 2:00 AM
# It runs the backup script automatically

echo "Daily backup scheduled at 2:00 AM."