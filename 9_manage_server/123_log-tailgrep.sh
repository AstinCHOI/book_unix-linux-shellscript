#!/bin/sh

# Use: tail, read


logfile="application.log"

## tail command
# -F : realtime check
# -n 0 : print only addition
tail -F -n 0 "$logfile" |\
while read line
do
  case "$line" in
    *"File Not Found"*)
      echo "!Warning! There is no file: $logfile"
      ;;
    *"Application Error"*)
      echo "!Warning! Application Error: $line"
      ;;
  esac
done