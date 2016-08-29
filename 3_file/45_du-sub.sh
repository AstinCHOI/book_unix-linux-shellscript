#!/bin/sh

# Use: du, sort

data_dir="/Users/achoi/Desktop"

du -sk ${data_dir}/*/ | sort -rn


## du option
# -k : killo byte
# -m : mega byte
# -s : sub-directory
# -h : human-readable

## sort option
# -r : reverse
# -n : order by number