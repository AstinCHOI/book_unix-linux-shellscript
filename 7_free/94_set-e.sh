#!/bin/sh

# Use: set, cd, rm

# if exit status isn't 0, end the script
# set -e

# no exist dir name (intended)
deldir="/var/log/myapp-"

# due to the "set -e", won't execute "rm"
cd "$deldir"
rm -f *.log

# diff from.txt to.txt > diff.txt
# >> 1, not 0

# so,
## 1)
# set +e
# diff from.txt to.txt > diff.txt
# set -e

## 2)
# diff from.txt to.txt > diff.txt ||: