#!/bin/bash

# ============================================
# Script Name: memory_usage_alert.sh
# Description: Sends alert if memory usage exceeds threshold
# ============================================

THRESHOLD=80  # Set threshold percentage

# Get memory usage percentage
USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

USAGE_INT=${USAGE%.*}

echo "Current Memory Usage: $USAGE_INT%"

if [ "$USAGE_INT" -gt "$THRESHOLD" ]; then
    echo "⚠️ WARNING: Memory usage exceeded $THRESHOLD%"
else
    echo "✅ Memory usage is under control"
fi