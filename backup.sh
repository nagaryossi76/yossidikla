#!/bin/bash

echo "**********Create a backup of a folder at a date and time you choose**********"
# Prompt user to enter the start date (format: YYYY-MM-DD)
echo "Please enter The Start date (format: YYYY-MM-DD):"
read startdate
# Prompt user to enter the start time (format: HH:MM)
echo "Please enter The Start time (format: HH:MM):"
read starttime

echo "Your Start Date is : $startdate"
echo "Your Start time is : $starttime"

current_date=$(date +%Y-%m-%d)
current_time=$(date +"%H:%M:%S")

echo "Today is $current_date and The Time is $current_time"

# Define the backup directory path
DESKTOP_DIR="$HOME/Desktop/BACKUP"

# Check if the directory does not exist
if [ ! -d "$DESKTOP_DIR" ]; then
    echo "Creating a backup directory at HOME/Desktop/BACKUP "
    mkdir -p "$DESKTOP_DIR"
else
    echo "The directory already exists"
fi
