#!/bin/sh

# Use: ls, local

DIR=/var/tmp

ls_home()
{
    local DIR

    DIR=~/$1
    echo "directory: $DIR"
    ls $DIR
}

ls_home logdir

echo "directory: $DIR"
ls $DIR

# directory: /Users/achoi/logdir
# ls: /Users/achoi/logdir: No such file or directory
# directory: /var/tmp
# AppleDiagnostics		tmp.15.e6YNYT
# com.symantec.daemon.status	tmp.8.JSy7LL
# com.symantec.ips.detections	tmp.8.JVnLHf
# filesystemui.socket		tmp.8.heVGdL
# tmp.0.npmzmc