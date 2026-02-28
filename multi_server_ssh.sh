#!/bin/bash
# Run using Bash

SERVERS=("server1.com" "server2.com")
# List of servers

COMMAND="uptime"
# Command we want to run on all servers

for SERVER in "${SERVERS[@]}"; do
# Loop through each server

    echo "Connecting to $SERVER..."
    ssh "$SERVER" "$COMMAND"
    # Connect and run command
done