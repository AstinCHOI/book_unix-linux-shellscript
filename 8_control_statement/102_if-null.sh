#!/bin/sh

# Use: :

datafile="sample.dat"

if [ -f "$datafile" ]; then
  # ./myapp "$datafile"
  # cannot write the empty if statement so, add null(:) command
  :
else
  echo "There is no data file: $datafile" >&2
  exit 1
fi