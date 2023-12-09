#!/bin/bash
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 path_to_folder_a path_to_folder_b path_to_log_file"
    exit 1
fi
# folder paths
folder_a="$1"
folder_b="$2"
log_file="$3"

# Syncing from folder A to folder B (not backwards)
rsync -av --update --itemize-changes "$folder_a/" "$folder_b/" | tee -a "$log_file"

echo "Synchronization complete. Log in $log_file."
