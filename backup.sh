#!/bin/bash

# Define the backup directory path
DESKTOP_DIR="$HOME/Desktop/BACKUP"

# Check if the directory does not exist
if [ ! -d "$DESKTOP_DIR" ]; then
    echo "Creating a backup directory at HOME/Desktop/BACKUP "
    mkdir -p "$DESKTOP_DIR"
else
    echo "The directory already exists"
fi
