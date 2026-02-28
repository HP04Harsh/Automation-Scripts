#!/bin/bash
# Run using Bash

echo "Select an option:"
echo "1. Check Disk Usage"
echo "2. Check Memory"
echo "3. Exit"

read OPTION
# Read user input

case $OPTION in
    1)
        df -h
        ;;
    2)
        free -h
        ;;
    3)
        echo "Exiting..."
        exit
        ;;
    *)
        echo "Invalid option."
        ;;
esac