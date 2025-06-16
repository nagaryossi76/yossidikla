#!/bin/bash

echo "**********Create a backup of a folder at a date and time you choose**********"
# Prompt user to enter a date and time (format: YYYY-MM-DD HH:MM)
echo "Please enter a date and time (format: YYYY-MM-DD HH:MM):"
read datetime

echo "you enter $datetime

# Define the backup directory path
DESKTOP_DIR="$HOME/Desktop/BACKUP"

# Check if the directory does not exist
if [ ! -d "$DESKTOP_DIR" ]; then
    echo "Creating a backup directory at HOME/Desktop/BACKUP "
    mkdir -p "$DESKTOP_DIR"
else
    echo "The directory already exists"
fi
