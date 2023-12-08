#!/bin/bash

# folder paths
folder_a="/path/to/folder/a"
folder_b="/path/to/folder/b"

# log path
log_file="/path/to/logfile.txt"

# Syncing from folder A to folder B (not backwards)
rsync -av --update --itemize-changes "$folder_a/" "$folder_b/" | tee -a "$log_file"

echo "Synchronization complete. Log in $log_file."
