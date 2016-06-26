#!/bin/sh

# Use: dialog, awk, rm
# curl -O http://invisible-island.net/datafiles/release/dialog.tar.gz

# LOG_DIR=~/Desktop/log

dialog --calendar "Select Date" 2 60 2> cal.tmp

date_str=$(awk -F / '{print $3$2$1}' cal.tmp)

# check empty string: -z
if [ -z "$date_str" ]; then
    rm -f cal.tmp
    exit
fi

# rm -i ${LOG_DIR}/app_log.$date_str

rm -f cal.tmp


dialog --yesno "Continue?" 5 40
answer=$?

if [ $answer -eq 0 ]; then
    echo "Selected: Yes"
elif [ $answer -eq 1 ]; then
    echo "Selected: No"
fi