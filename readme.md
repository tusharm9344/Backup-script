Linux Backup Script

This project is a simple Bash backup script that demonstrates how backups are created in Linux.

What I Learned

Using rsync -av to copy files safely and efficiently

Creating timestamped backups using the date command

Storing backups in structured directories

Writing and running basic Bash scripts

How It Works

Takes a source directory and a backup directory as input

Creates a new backup folder with date and time

Copies files into the backup folder using rsync

Run
chmod +x backup.sh
./backup.sh source_data backups
