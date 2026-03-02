#!/bin/bash

# ============================================
# Script Name: port_check.sh
# Description: Check if a specific port is open on a remote host
# Usage: ./port_check.sh <host> <port>
# Example: ./port_check.sh google.com 443
# ============================================

# Check if correct arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <host> <port>"
    exit 1
fi

HOST=$1
PORT=$2

# Try connecting using nc (netcat)
nc -z -w 3 $HOST $PORT

if [ $? -eq 0 ]; then
    echo "✅ Port $PORT is OPEN on $HOST"
else
    echo "❌ Port $PORT is CLOSED on $HOST"
fi