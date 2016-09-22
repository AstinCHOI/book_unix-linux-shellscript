#!/bin/sh

# Use: route, awk, ping

### For Linux ###
## get default gateway by route
# gateway=$(route -n | awk '$1 == "0.0.0.0" {print $2}')

## ping to default gateway
# ping -c $gateway > /dev/null 2>&1 # -c option for 1 time ping


### For Mac ###
gateway=$(netstat -nr | awk '$1 == "default" {print $2}') 
# -r option: current path table
# -n option: show IP, not hostname

ping -c 1 $gateway > /dev/null 2>&1


## check ping end status
if [ $? -eq 0 ]; then
  echo "[Success] ping -> $gateway"
else
  echo "[Failed] ping -> $gateway"
fi

