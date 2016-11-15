#!/bin/sh

# Use: awk

# Run: ./script data.csv

if [ ! -f "$1" ]; then
  echo "'$1' doesn't exist" >&2
  exit 1
fi

# get filename except extension
filename=${1%.*}

awk -F ',' '{sum += $3} END{print sum / NR}' "$1" > ${filename}.avg
