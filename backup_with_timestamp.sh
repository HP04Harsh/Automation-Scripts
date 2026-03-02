#!/bin/bash

# ============================================
# Script Name: backup_with_timestamp.sh
# Description: Creates a timestamped backup of a file
# Usage: ./backup_with_timestamp.sh <filename>
# ============================================

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE=$1

if [ ! -f "$FILE" ]; then
    echo "❌ File does not exist"
    exit 1
fi

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

cp $FILE "${FILE}_backup_$TIMESTAMP"

echo "✅ Backup created: ${FILE}_backup_$TIMESTAMP"