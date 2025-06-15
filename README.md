# yossidikla

# Backup Script in BASH

This script allows users to create backups of a selected folder by specifying the source folder, backup destination, and automatically adding a timestamp.

## Features
- **User Input:** Users can specify the folder to back up and the destination directory.
- **Automatic Timestamp:** Each backup includes a timestamp to differentiate versions.
- **Simple File Copy:** Uses `cp` for basic copying (can be replaced with `rsync` for enhanced functionality).

## Installation & Usage

### 1. Clone the repository (if applicable)
```bash
git clone <repository_url>
cd <repository_folder>
```

### 2. Make the script executable
```bash
chmod +x backup.sh
```

### 3. Run the script
```bash
./backup.sh
```
Follow the on-screen prompts to enter the source folder and backup location.

## Example Output
```
Enter the source folder to back up:
/home/user/documents
Enter the destination backup folder:
/home/user/backups
Creating backup at: /home/user/backups/backup_20250615_1413
Backup completed successfully!
```

## Future Improvements
- Implement `rsync` for more efficient backups.
- Allow scheduling automatic backups using `cron`.
- Validate folder paths before execution.

## License
This project is licensed under the MIT License.

## Author
Created by [Yossi&Dikla ]

