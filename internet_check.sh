#!/bin/bash
# Run using Bash

ping -c 1 google.com > /dev/null 2>&1
# Try to send 1 ping request to Google
# Hide output

if [ $? -eq 0 ]; then
# $? checks last command status
# 0 means success

    echo "Internet connection is working."
else
    echo "Internet is not working."
fi