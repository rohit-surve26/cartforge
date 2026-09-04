#!/bin/bash

# ==========================================================
# Rohit Surve - CartForge Jenkins Backup
# Project: CartForge Jenkins CI
# Purpose: Backup Jenkins configuration and job data
# ==========================================================

PROJECT_NAME="CartForge"
AUTHOR="Rohit Surve"

SOURCE_DIR="/var/lib/jenkins"
BACKUP_DIR="$HOME/jenkins-backup"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/${PROJECT_NAME}-Jenkins-Backup-${TIMESTAMP}.tar.gz"

echo "=========================================================="
echo "        CARTFORGE JENKINS BACKUP"
echo "=========================================================="
echo "Project      : $PROJECT_NAME"
echo "Author       : $AUTHOR"
echo "Source       : $SOURCE_DIR"
echo "Backup       : $BACKUP_FILE"
echo "Started      : $(date)"
echo "=========================================================="

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo ""
echo "[1/2] Creating Jenkins backup..."

sudo tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "SUCCESS: Jenkins backup created."
else
    echo "ERROR: Jenkins backup failed."
    exit 1
fi

echo ""
echo "[2/2] Verifying backup..."

if [ -f "$BACKUP_FILE" ]; then
    BACKUP_SIZE=$(du -h "$BACKUP_FILE" | cut -f1)

    echo "SUCCESS: Backup verified."
    echo "File size    : $BACKUP_SIZE"
    echo "Backup file  : $BACKUP_FILE"
else
    echo "ERROR: Backup file was not found."
    exit 1
fi

echo ""
echo "=========================================================="
echo "       CARTFORGE BACKUP COMPLETED SUCCESSFULLY"
echo "=========================================================="
echo "Completed    : $(date)"
echo "=========================================================="
