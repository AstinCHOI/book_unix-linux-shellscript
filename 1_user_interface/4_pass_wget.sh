#!/bin/sh

# Use: stty, read, wget, curl

username=astinastin
hostname=astin.upload.akamai.com

/bin/echo -n "Password: "
# echo-back off
stty -echo
read password
# echo-back on
stty echo

echo

wget -p --password="$password" "ftp://${username}@${hostname}/filename.txt"
# curl -s -u "${username}:${password}" -O "ftp://${hostname}/filename.txt"