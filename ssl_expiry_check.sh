#!/bin/bash

# ============================================
# Script Name: ssl_expiry_check.sh
# Description: Checks SSL certificate expiry date
# Usage: ./ssl_expiry_check.sh <domain>
# Example: ./ssl_expiry_check.sh google.com
# ============================================

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo | openssl s_client -servername $DOMAIN -connect $DOMAIN:443 2>/dev/null | \
openssl x509 -noout -dates

if [ $? -eq 0 ]; then
    echo "✅ SSL details fetched successfully"
else
    echo "❌ Failed to retrieve SSL certificate"
fi