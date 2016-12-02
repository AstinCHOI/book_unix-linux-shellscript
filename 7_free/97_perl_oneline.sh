#!/bin/sh

# Use: perl, nc, sleep

ipaddr="192.168.0.1"
port=80

## perl: 1 - 10 random number
waittime=$(perl -e 'print 1 + int(rand(10))')

## ruby
# waittime=$(ruby -e 'print 1 + rand(10).to_i')

nc -w 5 -zv $ipaddr $port
echo "Wait: $waittime sec."
sleep $waittime
nc -w 5 -zv $ipaddr $port


## cat example (-n option: while)
# perl -ne 'print "$_" ' sample.txt

## in perl
# #!/usr/bin/perl
# while (<>) {
#   print $_;
# }