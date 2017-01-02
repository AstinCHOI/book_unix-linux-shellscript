#!/bin/sh

# Use: curl, cmp, echo, date

url="http://www.example.org/update.html"

newfile="new.dat"
oldfile="old.dat"

## Linux
curl -so "$newfile" "$url"

## FreeBSD
# curl -qo "$newfile" "$url"

## 0 same, 1 different, 2 error
cmp -s "$newfile" "$oldfile"

if [ $? -ne 0 ]; then
  date_str=$(date '+%Y/%m/%d %H:%M:%S')
  
  echo "[$date_str] file changed."
  echo "target URL: $url"
  # ./alert.sh
fi

mv -f "$newfile" "$oldfile"