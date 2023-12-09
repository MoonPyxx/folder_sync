# folder_sync
simple bash script that syncs folder A with folder B
- not backwards
- doesn't delete files that are contained in B but not in A.
- preserves file hierarchy and timestamps
## How to use
./sync_folders.sh folder1 folder2 log_path

I made this because I wanted to sync my university folders from my linux setup and windows as I dual boot, I hope it's useful.
