#!/bin/sh

# Use: curl, date, echo


## target url to check
url="http://www.example.org/webapps/check"
date_str="$(date '+%Y/%m/%d %H:%M:%S')"

## -s slient, -o output, -w print format
httpstatus=$(curl -s "$url" -o /dev/null -w "%{http_code}")
curlresult=%?

if [ "$curlresult" -ne 0 ]; then
  echo "[$date_str] HTTP connection error: curl exit status [$curlresult]"
  # ./alert.sh
## > 400, 500 response codes
elif [ "$httpstatus" -ge 400 ]; then
  echo "[$date_str] HTTP Status error: HTTP status [$httpstatus]"
  # ./alert.sh
fi
