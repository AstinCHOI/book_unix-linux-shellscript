#!/bin/sh

# Use: paste, md5/md5sum, read, awk

# Run: ./71_paste.sh data.txt

tmpfile="hash.txt"
: > $tmpfile # null command (see 27_)

IFS='
' # (see 48_)

while read -r line # -r option: literal
do
  # get MD5 hash
  # extract 1st column
  /bin/echo -n "$line" | md5 | awk '{print $1}' >> $tmpfile

  ## in linux (md5 to md5sha1sum) 
done < $1

paste -d, "$1" $tmpfile # -d option: delimiter
