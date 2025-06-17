ktop#!/bin/bash

echo "**********Create a backup of a folder at a date and time you choose**********"

# Prompt user to enter the path to backup 
echo "Please enter The backup path :"
read BACKUP_DIR
# Check if the path exists 
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error, path does not exist"
    exit 1
fi

#Getting the user's desktop path and setting the backup folder
DESKTOP_DIR="$HOME/Desktop/BACKUP"
#Create a BACKUP folder if it doesn't exist
mkdir -p "$DESKTOP_DIR"

# Prompt user to enter the start date and time (format: YYYY-MM-DD HH:MM)
echo "Please enter The Start date (format: YYYY-MM-DD HH:MM):"
read START_DATE START_TIME

#Converting the date and time to cron scheduling
START_MIN=$(echo "$START_TIME" | cut -d':' -f2)
START_HOUR=$(echo "$START_TIME" | cut -d':' -f1)
START_DAY=$(echo "$START_DATE" | cut -d'-' -f3)
START_MONTH=$(echo "$START_DATE" | cut -d'-' -f2)


#Creating the backup file with a timestamp
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$DESKTOP_DIR/backup_$TIMESTAMP.tar.gz"


#Creating a backup using tar
echo "יוצר גיבוי של $BACKUP_DIR..."
tar -czf "$BACKUP_FILE" "$BACKUP_DIR"

#Check if the backup was created successfully
if [ $? -eq 0 ]; then
    echo "Backup successfully saved to $BACKUP_FILE"
else
    echo "Error creating the backup."
    exit 1
fi



CRON_JOB="$START_MIN $START_HOUR $START_DAY $START_MONTH * /Desktop/yossidikla/backup.sh"

