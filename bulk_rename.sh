#!/bin/bash
# Run this script using Bash

FOLDER="$HOME/Downloads"
# Folder where files exist

DATE=$(date +"%Y-%m-%d")
# Get today's date

cd "$FOLDER" || exit
# Move into the folder safely

for file in *; do
# Loop through all files

    if [[ -f "$file" ]]; then
    # Check if it is a normal file

        mv "$file" "$DATE-$file"
        # Rename file by adding date in front
    fi
done

echo "All files renamed successfully."
# Show success message