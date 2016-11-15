#!/bin/sh

# Use: cut, read, echo

# Run ./script ID

csvfile="data.csv"

if [ -z "$1" ]; then
  echo "There is no ID." >&2
  exit 1
fi

if [ ! -f "$csvfile" ]; then
  echo "CSV file doesn't exist: $csvfile" >&2
  exit 1
fi

while read line
do
  # Extract colmuns 
  id=$(echo $line | cut -f 1 -d ',')
  name=$(echo $line | cut -f 2 -d ',')
  score=$(echo $line | cut -f 3 -d ',')

  
  # If ID match with argument
  if [ "$1" = "$id" ]; then
    echo "$name"
  fi
done < $csvfile
