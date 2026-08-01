#!/bin/bash
SRC_DIR="./test_files"
BACKUP_DIR="./backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="backup_$TIMESTAMP.tar.gz"

echo "[1/2] Creating backup of log files..."
mkdir -p "$BACKUP_DIR"
find "$SRC_DIR" -maxdepth 1 -name "*.log" | tar -czvf "$BACKUP_DIR/$ARCHIVE_NAME" -T -
echo "Backup saved at: $BACKUP_DIR/$ARCHIVE_NAME"
