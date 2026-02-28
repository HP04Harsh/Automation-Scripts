#!/bin/bash
# Run using Bash

LOGFILE="/var/log/auth.log"
# Authentication log file (Ubuntu/Debian systems)

echo "Recent failed login attempts:"
echo "--------------------------------"

grep "Failed password" "$LOGFILE" | tail -10
# Search for failed login attempts
# Show last 10 results only