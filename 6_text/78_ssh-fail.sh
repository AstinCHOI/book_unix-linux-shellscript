#!/bin/sh

# Use: sed, sort, uniq

# Run: ./script

## Linux
securelog="/var/log/secure"

## FreeBSD
## /var/log/auth.log

## ex) "Failed password for user1 from x.x.x.x"
pattern="^.*sshd\[.*\].*Failed password for.* from \(.*\) port .*"

## sort -n option: number | -r option: reverse
## uniq: -c option: the number of same logs
## sed: -n option: matched part
sed -n "s/$pattern/\1/p" "$securelog" | sort | uniq -c | sort -nr


## ref: httpd illegal connection prevention
# 1) change port number to tcp/22
# 2) prohibit password input by public authentication
# 3) Limit using iptables connection IP address  