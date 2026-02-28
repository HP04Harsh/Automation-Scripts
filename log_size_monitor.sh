#!/bin/bash
# Run using Bash

LOGFILE="/var/log/syslog"
LIMIT=1000000
# Size limit in KB

SIZE=$(du "$LOGFILE" | awk '{print $1}')
# Get file size

if [ "$SIZE" -gt "$LIMIT" ]; then
    echo "Log file is too large!"
else
    echo "Log file size is normal."
fi