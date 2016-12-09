#!/bin/sh

# Use: curl, md5sum or md5

url_path="http://www.example.org/"
filename="sample.dat"

curl -sO "${url_path}${filename}" && md5 "$filename"

rm -f "$filename"