#!/bin/sh

# Use: awk, sort uniq

# Run: ./script access_log

logfile="access_log"

if [ ! -f $logfile ]; then
  echo "$logfile doesn't exist." >&2
  exit 1
fi

awk '$6=="\"GET" {print $7}' "$logfile" | sort | uniq -c | sort -nr