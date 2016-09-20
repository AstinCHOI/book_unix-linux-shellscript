#!/bin/sh

# Use: date, tar


logdir="../example/log"

# get 15th
thismonth=$(date '+%Y/%m/15 00:00:00')

# Linux
# last_YYYYMM=$(date -d "$thismonth -1 month ago" '+%Y%m')

# Mac
last_YYYYMM=$(date -v-1m '+%Y%m')

tar cvf ${logdir}/${last_YYYYMM}.tar ${logdir}/access.log-${last_YYYYMM}*