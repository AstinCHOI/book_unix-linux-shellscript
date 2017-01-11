#!/bin/bash

# Use: echo

# Run: ./script perl

## check to command
command="$1"

if [ -z "$command" ]; then
  echo "ERROR: input the command to check." >&2
  exit 1
fi

## change ":" to " "
for dir in ${PATH//:/ } # same as $(echo $PATH | sed 's/:/ /g')
do
  if [ -f "${dir}/${command}" ]; then
    echo "${dir}/${command}"
  fi
done

## ${VARIABLE/PATTERN/TO}  : 's/PATTERN/TO/g'
## ${VARIABLE//PATTERN/TO} : 's/PATTERN/TO/'
## ${VARIABLE/#PATTERN/TO} : starts with
## ${VARIABLE/%PATTERN/TO} : ends with