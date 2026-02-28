#!/bin/bash
# Run using Bash

URL="https://google.com"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
# Get HTTP status code silently

if [ "$STATUS" -eq 200 ]; then
    echo "API is working fine."
else
    echo "API is down. Status code: $STATUS"
fi