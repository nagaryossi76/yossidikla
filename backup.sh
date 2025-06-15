#!/bin/bash
echo "נא להזין את נתיב התקייה לגיבוי:"
read source_folder

echo "נא להזין את נתיב תקיית היעד לגיבוי:"
read backup_folder

# יצירת שם גיבוי עם תאריך ושעה
timestamp=$(date +%Y%m%d_%H%M%S)
destination="$backup_folder/backup_$timestamp"

echo "יוצר גיבוי ב: $destination"
mkdir -p "$destination"
cp -r "$source_folder" "$destination"

echo "הגיבוי הסתיים בהצלחה!"


