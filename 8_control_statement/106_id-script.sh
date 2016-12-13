#!/bin/sh

# Use: id, whoami, echo

script_user="achoi"

# u: user id | n: name
if [ $(id -nu) = "$script_user" ]; then  
  # if it's allowed user:
  ./batch_program
else
  echo "[ERROR] execute as $script_user user." >&2
  exit 1
fi

## id -nu == whoami == echo $USER