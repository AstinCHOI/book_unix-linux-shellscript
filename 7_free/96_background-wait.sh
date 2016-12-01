#!/bin/sh

# Use: ping, wait, cat

ping -c 6 8.8.8.8 > host1.log &
ping -c 6 8.8.8.8 > host2.log &
ping -c 6 8.8.8.8 > host3.log &

wait

cat host1.log host2.log host3.log