#!/bin/sh

# Use: find

logdir="../example"

# from 30 to 2 days ago
find $logdir -name "*.log" -mtime -30 -mtime +1 -print

# find -mtime n
# find -mtime -3 : newer 3 days (n ~)
# find -mtime 3 : from 4 to 3 days ago (n to n+1)
# find -mtime +3 : before 3 days ago (~ n) => FreeBSD | 4 days ago => Linux