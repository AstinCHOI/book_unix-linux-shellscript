#!/bin/sh

# Use: find, xargs

logdir="../example"

# remove old files more than a year
find $logdir -name "*.log" -mtime +364 -print | xargs rm -fv
# find -mtime n
# find -mtime -3 : newer 3 days (n ~)
# find -mtime 3 : from 4 to 3 days ago (n to n+1)
# find -mtime +3 : before 3 days ago (~ n) => FreeBSD | 4 days ago => Linux


## Caution
find $logdir -name "*.log" -mtime +364 -print | xargs ls
## then use rm

## above example genereates error for strings including space
find $logdir -name "*.log" -mtime +364 -print0 | xargs -0 rm -fv
## xargs -0: change space delimiter to null
## print0 : print space to null delimiter