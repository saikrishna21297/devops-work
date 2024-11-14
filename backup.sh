#!/bin/bash

# Variables
SOURCE_DIR="/home/ec2-user/data"  # Directory to backup
BACKUP_DIR="/home/ec2-user/backup"      # Where the backup will be stored
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")      # Timestamp format for the backup
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"      # Name of the backup file

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Backup the directory
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

# Output message
echo "Backup of $SOURCE_DIR completed. Backup stored as $BACKUP_DIR/$BACKUP_NAME"

