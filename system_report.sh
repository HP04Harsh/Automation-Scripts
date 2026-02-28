#!/bin/bash
# Run using Bash

REPORT="$HOME/system_report.txt"
# File where report will be saved

echo "System Health Report" > "$REPORT"
# Write title into report file

echo "Generated on: $(date)" >> "$REPORT"
# Add current date and time

echo "------------------------" >> "$REPORT"

echo "Uptime:" >> "$REPORT"
uptime >> "$REPORT"
# Add system running time

echo "" >> "$REPORT"

echo "Memory Usage:" >> "$REPORT"
free -h >> "$REPORT"
# Add memory information in human-readable format

echo "" >> "$REPORT"

echo "Disk Usage:" >> "$REPORT"
df -h >> "$REPORT"
# Add disk usage information

echo "Report saved at $REPORT"