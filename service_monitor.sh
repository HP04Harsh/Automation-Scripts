#!/bin/bash
# Run using Bash

SERVICE="nginx"
# Name of the service to monitor

if systemctl is-active --quiet $SERVICE; then
# Check if service is running

    echo "$SERVICE is running normally."
else
    echo "$SERVICE is not running. Restarting now..."
    sudo systemctl restart $SERVICE
    # Restart the service
    echo "$SERVICE has been restarted."
fi