#!/bin/sh

# Use: awk

# Run: ./script access_log

logfile="access_log"

if [ ! -f "$1" ]; then
  echo "$1 doesn't exist." >&2
  exit 1
fi

## NF-1 == arr[-2]
## ex) $(NF-1)>=500 ..
awk '$(NF-1)==404 {print $7}' "$logfile" > "${logfile}.404"