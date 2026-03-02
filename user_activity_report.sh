#!/bin/bash

# ============================================
# Script Name: user_activity_report.sh
# Description: Shows last login information of all users
# ============================================

echo "====== User Last Login Report ======"
echo

last | grep -v "reboot" | head -20