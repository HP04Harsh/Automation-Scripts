#!/bin/bash
# Run using Bash

THRESHOLD=80
# Set warning limit to 80 percent

USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
# df / shows disk usage
# tail -1 gets the main disk line
# awk gets the percentage column
# sed removes the % symbol

if [ "$USAGE" -gt "$THRESHOLD" ]; then
# Check if usage is greater than 80

    echo "Warning! Disk usage is $USAGE%."
else
    echo "Disk usage is normal: $USAGE%."
fi