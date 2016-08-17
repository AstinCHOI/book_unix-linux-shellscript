#!/bin/sh

# Use: tar, date

# 201608.tar
archivefile="$(date +'%Y%m').tar"

# 20160817
logfile="$(date +'%Y%m%d').log"

tar rvf $archivefile log/$logfile

## tar option
# -r: file append