#!/bin/sh

# Use: dd, time, ftp, bc

filesize=1024

tempdata="tmpdata.tmp"
tempfile="timecount.tmp"

dd if=/dev/zero of="$tempdata" count=$filesize bs=1024 2> /dev/null

# 0x00(/dev/zero) 
# if you want to random: /dev/urandom

server="astin.upload.akamai.com"
user="astinastin"
password="$1"

echo "Filesize: $filesize (KB)"
echo "FTP Server: $server"

(time -p ftp -n "$server") << __EOT__ 2> "$tempfile"
user "$user" "$password"
binary
cd "360949"
put "$tempdata"
__EOT__

realtime=$(awk '/^real / {print $2}' "$tempfile")
echo "$realtime"
speed=$(echo "${filesize}/${realtime}" | bc)
echo "Transfer Speed: $speed (KB/sec)"

rm -f "$tempdata" "$tempfile"

##
# wget "ftp://user:password@hostname/path"
# curl -u "user:password" -0 "ftp://hostname/path"