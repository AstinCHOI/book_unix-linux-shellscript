#!/bin/bash

# Use: read, echo

while IFS= read -r id status
do
  if [ "${id:0:2}" = "AC" ]; then
    echo "$id $status"
  fi
done < "$1"

# num=1
# echo ${id:num+2:2}

# echo ${id:${#id}-1} # the last character