#!/bin/sh

# Use: find, wc

targetdir="/Users/achoi/Desktop"

filecount=$(find "$targetdir" -maxdepth 1 -type f -print | wc -l)
dircount=$(find "$targetdir" -maxdepth 1 -type d -print | wc -l)

dircount=$(expr $dircount - 1)

echo "Target Directory: $targetdir"
echo "The number of files: $filecount"
echo "The number of directories: $dircount"
##
# Target Directory: /Users/achoi/Desktop
# The number of files:       34
# The number of directories: 9
