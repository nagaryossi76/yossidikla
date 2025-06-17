# yossidikla

# Backup Script in BASH

This Bash script allows users to **create a compressed backup of a chosen folder** and schedule the backup to run **daily starting from a specific date and time**.

---

Features

- Prompt the user to select a folder to back up.
- Create a `.tar.gz` compressed backup.
- Save backups to a `BACKUP` folder on the user's Desktop.
- Schedule automated daily backups using `cron`.
- User-friendly prompts and error handling.

---

Usage

### 1. Clone or copy the script:
Save the script as `backup.sh`.

### 2. Make the script executable:
```bash
chmod +x backup.sh
3. Run the script:
bash
Copy
Edit
./backup.sh
4. Follow the prompts:
Enter the full path of the folder you want to back up.

Please enter The backup path [/home/username/folder]:
Enter the start date and time in this format:

Please enter The Start date (format: YYYY-MM-DD HH:MM):
How It Works
Verifies that the provided folder exists.

Creates a BACKUP directory on your Desktop (if it doesn't already exist).

Creates a compressed .tar.gz archive with a timestamp.

Schedules a daily backup using cron, starting from the specified date and time.

Example

Please enter The backup path [/home/username/folder]:
/home/yossi/Documents/Projects

Please enter The Start date (format: YYYY-MM-DD HH:MM):
2025-06-20 14:00

Backup successfully saved to /home/yossi/Desktop/BACKUP/backup_2025-06-17_22-30-00.tar.gz
The backup will be performed daily starting from 2025-06-20 at 14:00.
Notes
This script adds a cron job that runs daily at the specified time.

Make sure the full path to the script in the cron line is correct:

You might need to adjust it according to your actual path.

The script currently does not prevent duplicate cron jobs if run multiple times.

Requirements
Bash shell (/bin/bash)

tar installed

User permissions to add cron jobs (crontab)

License
This project is open-source and free to use under the MIT License.

Author
Created with by Yossi Nagar & Dikla Mogas

