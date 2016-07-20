#!/bin/sh

# Use: hostname, grep

err_count=$(grep -c "ERROR" example/comsub.log)
# err_count=$(grep -c "ERROR" ~/Desktop/$(hostname).log) # $() recommended
# err_count=`grep -c "ERROR" ~/Desktop/\`hostname\`).log` # ``
echo "Error counts: $err_count"

date_str=`date +"%Y%m%d"`
echo $date_str