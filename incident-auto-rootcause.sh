#!/bin/bash

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
REPORT_DIR="incident_$TIMESTAMP"

mkdir $REPORT_DIR

echo "Collecting system info..."
uptime > $REPORT_DIR/system.txt
free -h >> $REPORT_DIR/system.txt
df -h >> $REPORT_DIR/system.txt

echo "Collecting docker info..."
docker ps -a > $REPORT_DIR/docker.txt
docker stats --no-stream >> $REPORT_DIR/docker.txt

echo "Collecting recent logs..."
journalctl -n 200 > $REPORT_DIR/logs.txt

echo "Incident data collected in $REPORT_DIR"