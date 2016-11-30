#!/bin/sh

# Use: curl

curl -sO http://www.example.org/download/bigfile.dat &
curl -sO http://www.example.com/files/sample.pdf &
curl -sO http://kr.example.net/images/large.jpg &

## -s: silent / -O: to save a file
## FreeBSD: not installed curl by default, so can use "fetch" instead of "curl"

# long_time_program > result.log 2>&1 &