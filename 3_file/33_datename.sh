#!/bin/sh

# Use: date, cp


config="../example/index.html"

bak_filename="${config}.$(date '+%Y%m%d')"

if [ -e $bak_filename ]; then
    bak_filename="${config}.$(date '+%Y%m%d%H%M.%S')"
fi

cp -v "$config" "$bak_filename"
## 
# $ ./33_datename.sh
# ../example/index.html -> ../example/index.html.20160803
