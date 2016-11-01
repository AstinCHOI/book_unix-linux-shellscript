#!/bin/sh

# Use: env, grep, cut

envname="TMPVAR"

# export TMPVAR=1


# in the env variables
# the first value: -f 1
# delimeter: -d "="
env | cut -f 1 -d "=" > env.lst

# check env variable as env.lst
# return 0 if matched string 
grep -q "^${envname}$" env.lst 

if [ $? -eq 0 ]; then
  echo "$envname is $TMPVAR"
  # do something
else
  echo "$envname is null"
fi