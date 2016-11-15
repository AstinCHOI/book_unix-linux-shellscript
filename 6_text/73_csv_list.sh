#!/bin/sh

# Use: read, grep

# Run: ./script id.lst

filecheck() {
  if [ ! -f $1 ]; then
    echo "ERROR: File $1 does not exist." >&2
    exit 1;
  fi
}

csvfile="data.csv"
idlistfile="$1"
filecheck "$csvfile"

filecheck "$idlistfile"

while IFS=, read id name score
do
  grep -xq "$id" "$idlistfile" 
  # x option: pattern all match
  # q option: not print
  # f option: print a line when patern matched
  if [ $? -eq 0 ]; then
    echo $name
  fi
done < "$csvfile"

# TMPDIR=/mytmp ./start.sh ## only this line TMPDIR is /mytmp 