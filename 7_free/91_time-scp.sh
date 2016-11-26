#!/bin/sh

# Use: time, scp, awk, bc

username="user1"
filename="transfer.dat"
hostname="192.168.2.10"
path="/var/tmp"
tempfile="timetmp.$$"

# time -p option: print seconds
# scp -C option: compression
(time -p scp -C "$filename" ${username}@${hostname}:"${path}" ) 2> "$tmpfile"

realtime=$(awk '/^real / {print $2}' "$tmpfile")
usertime=$(awk '/^user / {print $2}' "$tmpfile")
systime=$(awk '/^sys / {print $2}' "$tmpfile")

# CPU waiting time = user + sys
# IO waiting time = real - (user + sys)

# expr cannot calculate floating point
cpu_percentage=$(echo "scale=2; 100 * ($usertime + $systime) / $realtime" | bc )
echo "CPU percentage for scp transfer: $cpu_percentage (%)"

rm -f "$tmpfile"