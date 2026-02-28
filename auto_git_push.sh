#!/bin/bash
# Run using Bash

MESSAGE="Auto commit on $(date)"

git add .
# Add all changes

git commit -m "$MESSAGE"
# Commit with timestamp

git push
# Push to remote repository

echo "Code pushed successfully."