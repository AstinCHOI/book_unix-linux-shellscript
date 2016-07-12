#!/bin/sh

# Use: set

set -u

COPY_DIR=example/work

# mistake
cp example/myapp.log $COP_DIR
# xx: COP_DIR: unbound variable


# ./set-u.sh 1
echo "1st arg: $1"
# 1st arg: 1
echo "2nd arg: $2"
# unbound variable if set -u