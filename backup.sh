#!/bin/bash
set -euo pipefail
SOURCE_DIR=$1
BACKUP_DIR=$2

LOG_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/logs"
LOG_FILE="$LOG_DIR/report.log"

DATE=$(date + "%y-%m-%d-_%H-%M-%S")

DEST="$BACKUP_DIR/backupat_$DATE"
mkdir -p "$LOG_DIR"
mkdir -p "$DEST"

echo "Backup started at $DATE"  >> "$LOG_FILE"

rsync -av "$SOURCE_DIR" "$DEST"  

echo "Backupa ended at $DEST "  >> "$LOG_FILE"
