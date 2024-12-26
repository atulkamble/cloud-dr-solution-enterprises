#!/bin/bash

# Define variables
BACKUP_DIR="/var/www/html"
S3_BUCKET="disaster-recovery-backups"
TIMESTAMP=$(date +"%Y-%m-%d-%H-%M-%S")
BACKUP_FILE="backup-$TIMESTAMP.tar.gz"

# Create a compressed archive of the backup directory
tar -czvf /tmp/$BACKUP_FILE $BACKUP_DIR

# Upload to S3
aws s3 cp /tmp/$BACKUP_FILE s3://$S3_BUCKET/

# Clean up
rm -f /tmp/$BACKUP_FILE
