#!/bin/bash

# ==========================================
# File: internet_speed_test.sh
# Purpose: Check internet connectivity
# ==========================================

TARGET="google.com"

echo "====================================="
echo "     INTERNET CONNECTIVITY TEST      "
echo "====================================="

# Ping test
ping -c 4 $TARGET > /dev/null

if [ $? -eq 0 ]; then
    echo "Internet is UP ✅"
else
    echo "Internet is DOWN ❌"
fi