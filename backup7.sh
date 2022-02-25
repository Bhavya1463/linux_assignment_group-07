#!/bin/bash
# script to take daily backup

# What to backup. 
backup_files="/home/bhavya"

# Where to backup to.
dest="/home/bhavya/backup2"

# Create archive filename.
date=$(date +"%d-%m-%Y")
hostname=$(hostname -s)
archive_file="$hostname-$date.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
for i in G M K
do
	#backup using tar
	tar czf $dest/$archive_file $backup_files
done

# Print end status message.
echo
echo "Backup finished"
date

#losg listing of files in $dest to check file size
ls -lh $dest
