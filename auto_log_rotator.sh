#!/bin/bash

LOG_DIR="/var/log"
MAX_SIZE=50M
ARCHIVE_DIR="/var/log/archives"

mkdir -p $ARCHIVE_DIR

echo "===== LOG ROTATION START ====="

find $LOG_DIR -type f -name "*.log" -size +$MAX_SIZE | while read file; do
    filename=$(basename $file)
    timestamp=$(date +%Y%m%d%H%M%S)

    gzip -c $file > $ARCHIVE_DIR/${filename}_$timestamp.gz
    > $file

    echo "Rotated: $file"
done

# Keep only latest 7 archives per log
cd $ARCHIVE_DIR || exit
ls -1t | tail -n +8 | xargs -r rm --

echo "Log rotation completed."