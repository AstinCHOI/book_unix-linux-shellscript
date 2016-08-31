#!/bin/sh

# Use: strings, grep

message="Unknown Error"

## Mac
for filename in /usr/bin/*
do
  line=$(strings $filename | grep "$message")
  if [[ $line != '' ]]
  then
    echo "$filename: $line"
  fi
done 

## Linux
# strings -f /usr/bin/* | grep "$message"

## od and hexdump command
# od -c somefile
# hexdump -C somefile