#!/bin/bash
# Run using Bash

LENGTH=12
# Set password length

PASSWORD=$(tr -dc A-Za-z0-9 </dev/urandom | head -c $LENGTH)
# Generate random letters and numbers
# Take only required length

echo "Your secure password is:"
echo "$PASSWORD"