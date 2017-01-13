#!/bin/bash

# Use: echo

## Suppose that
# script.sh: print data
# sort-data.sh: sort data
# calc.sh: calculate data
./script.sh | ./sort-data.sh | ./calc.sh > output.txt

# copy result because PIPESTATUS disappears when command runs
pipe_status=("${PIPESTATUS[@]}") # "@" means entire array

# check the exit status for sort-data.sh
if [ "${pipe_status[1]}" -ne 0 ]; then
  echo "[ERROR] fail at sort-data.sh" >&2
fi

## "$?": last exit status
## PIPESTATUS[0].. 1, 2, 3.. exit status