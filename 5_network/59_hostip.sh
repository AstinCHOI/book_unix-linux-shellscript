#!/bin/sh

# Use: host, awk

# FQDN (Qualified Domain Name)

fqdn="www.google.com"

echo "Address if $fqdn"
echo "=============="

host $fqdn | \
awk '/has address/ {print $NF, "IPv4"} \
/has IPv6 address/ {print $NF, "IPv6"}'

## NF : last column