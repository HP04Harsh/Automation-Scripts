#!/bin/bash
# Run using Bash

USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)
# Get CPU usage percentage

if [ "$USAGE" -gt 80 ]; then
    echo "High CPU usage: $USAGE%"
else
    echo "CPU usage normal: $USAGE%"
fi