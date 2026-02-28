#!/bin/bash
# This tells the system to run this script using Bash

DOWNLOADS="$HOME/Downloads"
# Store the path of Downloads folder in a variable

cd "$DOWNLOADS" || exit
# Move into Downloads folder
# If folder doesn't exist, stop the script safely

mkdir -p Images Documents Videos Archives Others
# Create folders if they don't already exist

for file in *; do
# Loop through every file in Downloads folder

    if [[ -f "$file" ]]; then
    # Check if it is a regular file (not a folder)

        case "$file" in
        # Decide action based on file extension

            *.jpg|*.png|*.jpeg)
                mv "$file" Images/
                # Move image files into Images folder
                ;;
            *.pdf|*.docx|*.txt)
                mv "$file" Documents/
                # Move document files
                ;;
            *.mp4|*.mkv)
                mv "$file" Videos/
                # Move video files
                ;;
            *.zip|*.tar|*.gz)
                mv "$file" Archives/
                # Move compressed files
                ;;
            *)
                mv "$file" Others/
                # Move all other files
                ;;
        esac
    fi
done

echo "Downloads folder has been organized successfully."
# Print confirmation message