#!/bin/bash

LOG_FILE="docker_health.log"

echo "===== DOCKER HEALTH CHECK =====" >> $LOG_FILE
date >> $LOG_FILE

if ! command -v docker &>/dev/null; then
  echo "Docker not installed" >> $LOG_FILE
  exit 1
fi

containers=$(docker ps -q)

for container in $containers; do
  health=$(docker inspect --format='{{.State.Health.Status}}' $container 2>/dev/null)

  if [[ "$health" == "unhealthy" ]]; then
    echo "Container $container is unhealthy. Restarting..." >> $LOG_FILE
    docker restart $container >> $LOG_FILE
  fi
done

echo "Docker health check complete." >> $LOG_FILE
echo "" >> $LOG_FILE