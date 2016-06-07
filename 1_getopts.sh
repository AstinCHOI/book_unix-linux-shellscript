#!/bin/sh

# ./getopts.sh -a -p '======sep======' /home/user1/docs
# . .. a.txt readme.txt
# ====== sep ======

a_flag=0
separator=""
while getopts "ap:" option # a option and p option with param
do
    case $option in
        a)
            a_flag=1
            ;;
        p)
            separator="$OPTARG"
            ;;
        \?)
            echo "Usage: getopts.sh [-a] [-p separator] target_dir" 1>&2
            exit 1
        ;;
    esac
done

shift $(expr $OPTIND - 1)
path="$1"

if [ $a_flag -eq 1 ]; then
    ls -a -- "$path"
else
    ls -- "$path"
fi

if [ -n "$separator" ]; then
    echo "$separator"
fi