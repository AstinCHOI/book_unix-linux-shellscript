#!/bin/sh

# Use: ftp

server="astin.upload.akamai.com"
user="astinastin"
password="$1"
dir="/360949"
filename="testclient.py"

ftp -n "$server" << __EOT__
user "$user" "$password"
binary
cd "$dir"
get "$filename"
__EOT__

# option -n : for the script (for the detail "man ftp")
