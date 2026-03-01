#!/bin/bash

LOG_FILE="disk_usage_history.log"
THRESHOLD=5   # % increase alert

CURRENT=$(df / | awk 'NR==2 {gsub("%",""); print $5}')
DATE=$(date +"%Y-%m-%d")

echo "$DATE $CURRENT" >> $LOG_FILE

PREVIOUS=$(tail -2 $LOG_FILE | head -1 | awk '{print $2}')

if [ -n "$PREVIOUS" ]; then
    DIFF=$((CURRENT - PREVIOUS))

    if [ $DIFF -gt $THRESHOLD ]; then
        echo "⚠ ALERT: Disk usage increased by $DIFF% since yesterday"
    else
        echo "Disk growth normal ($DIFF%)"
    fi
else
    echo "Baseline recorded."
fi