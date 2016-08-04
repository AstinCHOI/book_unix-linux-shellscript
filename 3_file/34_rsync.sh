#!/bin/sh

# Use: rsync

log_dir="../example"
backup_dir="/Users/achoi/Desktop/"

rsync -avn "$log_dir" "$backup_dir"

# -a : archive mode
# -v : verbose mode
# -n : not copy, just check
# --delete : complete sync

## default: ssh
# $ rsync -av ../example user@server:/backup/myapp

# explicit to use ssh
# $ rsync -av -e ssh ...
