#!/bin/sh

# Use: arp, awk

ipaddr="www.google.com"

# linux
macaddr=$(arp -ap | awk "/\($ipaddr\)/ {print \$4}")

if [ -n "$macaddr" ]; then
    echo "$ipaddr -> $macaddr"
else
    echo "There is no $ipaddr in ARP cache."
fi

## arp
# -n option : print no hostname
