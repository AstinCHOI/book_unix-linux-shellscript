#!/bin/sh

# Use: sed, readlink

filename="target.txt"
cd ../example

if [ ! -e "$filename" ]; then
  echo "ERROR: File not exists." >&2
  exit 1
elif [ -h "$filename" ]; then # if target is symbolic link  
  sed -i.bak "s/Hello/Hi/g" "$(readlink "$filename")"
  ## in linux
  # sed -i.bak --follow-symlinks "s/Hello/Hi/g" "$filename"
else
  sed -i.bak "s/Hello/Hi/g" "$filename"
fi


## sed "s/Hello/Hi/g" target.txt > tmp
## mv tmp target

# Same as

## sed -i "s/Hello/Hi/g" target.txt > tmp

