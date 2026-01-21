#!/bin/bash
SOURCE_DIR=$1
BACKUP_DIR=$2

DATE=$(date + "%y-%m-%d-_%H-%M-%S")

DEST="$BACKUP_DIR/backupat_$DATE"

mkdir "$DEST"

echo "Backup started at $DATE"  >> report.log

rsync -av "$SOURCE_DIR" "$DEST"

echo "Backupa ended at $DEST "  >> report.log
