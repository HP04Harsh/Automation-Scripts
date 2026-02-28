#!/bin/bash
# Run using Bash

FILE="users.txt"
# File containing usernames

while read USER; do
# Read each line from file

    sudo useradd "$USER"
    # Create new user

    echo "User $USER created."
done < "$FILE"