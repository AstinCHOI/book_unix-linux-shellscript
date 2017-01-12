#!/bin/bash

# Use: comm

## compare dir1 with dir2
dir1="/var/tmp/backup1"
dir2="/var/tmp/backup2"

## compare by comm command. Without middle file, 
## handle with process substitution
comm <(ls "$dir1") <(ls "$dir2")

## same as
# ls "$dir1" > dir1.tmp
# ls "$dir2" > dir2.tmp
# comm dir1.tmp dir2.tmp


## Process Substitution: 
## command input/ouput -> FIFO(named pipe) and file descriptor (/dev/fd..)
## It's NOT input redirect and subshell

## Usage: COMMAND1 <(COMMAND2)