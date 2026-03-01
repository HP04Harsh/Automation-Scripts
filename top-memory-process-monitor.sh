#!/bin/bash

THRESHOLD=20   # % memory threshold

ps aux | awk -v threshold=$THRESHOLD '
NR==1 {next}
{
    if ($4 > threshold) {
        printf "⚠ High Memory Usage: %s | PID: %s | MEM: %s%%\n", $11, $2, $4
    }
}'