#!/bin/sh

# Use: ifconfig, awk

## for Linux
# LANG=C /sbin/ifconfig |\
# awk '/^[a-z]/ {print "[" $1 "]"}
# /inet / {split($2,arr,":"); print arr[2]}'

## for Mac/FreeBSD
LANG=C /sbin/ifconfig |\
awk '/^[a-z]/ {print "[" $1 "]"}
/inet / {print $2}'