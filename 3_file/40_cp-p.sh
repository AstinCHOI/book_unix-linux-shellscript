#!/bin/sh

# Use: getopts, cp


backup_source="/Users/achoi/Desktop/something"
backup_dir="/Users/achoi/Desktop/backup"


# copy ~/Desktop to $backup_dir
while getopts "a" option
do
  case $option in
    a)
      cp -a "$backup_source" "$backup_dir"
      exit
      ;;
  esac
done

cp -R "$backup_source" "$backup_dir"

## cp
# -a option: copy with timestamp, permission and others.. [but, can't make owner to root]
# -R option: recursive 
# -L option: copy real file from symbolic link
# -p option: preserve option (keep file attributes)


## in linux: -a == -dpR
# -d option: just copy symbolic link 
# -pr option: [-p option] with just copy symbolic link 


## in FreeBSD/Mac : -a == -PpR
# -P option: copy symbolic link
# -pr option: [-p option] with copy real file from symbolic link