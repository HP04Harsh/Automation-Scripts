#!/bin/bash

LOG_FILE="/var/log/syslog"
THRESHOLD=5

tail -Fn0 "$LOG_FILE" | \
awk -v threshold=$THRESHOLD '
/ERROR|CRITICAL/ {
    count++
    print strftime("%Y-%m-%d %H:%M:%S"), "Error detected:", $0
}

count >= threshold {
    print "⚠ ALERT: Error threshold exceeded (" count " errors)"
    count=0
}'