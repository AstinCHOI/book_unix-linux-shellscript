#!/bin/sh

# Use: ls, case


## IFS(Internal Field Separator): new line, tab, space
IFS_BACKUP=$IFS 

## IFS=$'\n' 
IFS='
'
## set IFS for only new line
## This setting can do with files which include spaces

for filename in $(ls -AF ~/Desktop)
do
  case "$filename" in
    .*/)
      echo "dot directory: $filename"
    ;;
    .*)
      echo "dot file: $filename"
    ;;
  esac
done

IFS=$IFS_BACKUP

## ls option
# -A: All 
# -F: directory / file