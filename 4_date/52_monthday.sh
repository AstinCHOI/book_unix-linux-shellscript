#!/bin/sh

# Use: date

## Linux
# tomorrow=$(date "+%d" -d '1 day')

## Mac
tomorrow=$(date -v+1d "+%d")

if [ "$tomorrow" = "01" ]; then
  echo "Someting runs when today is the last day of month"
fi


# date "+%d" -d '3 days ago'
date -v+3d "+%d"