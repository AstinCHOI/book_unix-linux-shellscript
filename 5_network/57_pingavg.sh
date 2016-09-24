#!/bin/sh

# Use: ping, sed, awk

ipaddr="www.google.com"
count=10

echo "Ping to: $ipaddr"
echo "Ping coung: $count"
echo "Ping average[ms]:"

# pring results to file
ping -c $count $ipaddr > ping.$$

# extract "time=4.32 ms" by sed | average by awk
sed -n "s/^.*time=\(.*\) ms/\1/p" ping.$$ | awk '{sum+=$1} END{print sum/NR}'

# remove temp file
rm -f ping.$$ 