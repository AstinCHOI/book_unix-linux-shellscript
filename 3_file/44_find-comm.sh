#!/bin/sh

# Use: find, sort, comm

dirA="dir1"
dirB="dir2"

( cd dir1; find . -maxdepth 1 -type f -print | sort ) > dir1-file.lst
( cd dir2; find . -maxdepth 1 -type f -print | sort ) > dir2-file.lst

comm dir1-file.lst dir2-file.lst


## There are 1, 2 and 3 sections
# 1: exists in only dir1
# 2: exists in only dir2
# 3: both

## you can specify like $ comm -12  file1 file2 (print 1 and 2 section)