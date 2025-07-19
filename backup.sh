#!/bin/bash

echo "<<<<Creating backup>>>>>"

source_dir="/home/ubuntu/shell"
destination_dir="/home/ubuntu/backup"

#CREATE BACKUP DIr

mkdir -p /home/ubuntu/backup
# ❌ Delete old backups
rm -f "$destination_dir"/*.tar.gz


timestamp=$(date "+%y-%m-%d-%H-%M-%S")

backup="$destination_dir/backup_$timestamp.tar.gz"

tar -czf "$backup" "$source_dir"

echo "backup created"

