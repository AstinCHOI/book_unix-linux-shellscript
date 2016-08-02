#!/bin/sh

# Use: find, xargs, grep

logdir="../example"

# /dev/null means a item of file list
# use it to print <filename>:<matched line>
# if not, just can see <matched line>
find $logdir -name "*.log" -print0 | xargs grep "ERROR" /dev/null
# 
# ../example/comsub.log:----- ERROR ----
# ../example/comsub.log:===== [ERROR---


## If too much file, error will appear
# $ grep 'ERROR' *.log
## .. "Argument list too long" (Depends on OS for error message)

## Check limited str num
# $ getconf ARG_MAX
## 262144