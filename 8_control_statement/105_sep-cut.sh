#!/bin/sh

filename="/etc/passwd"
## user:password:uid:gid:comment:home_path:login_shell


# except comment '#'
# print first value -f 1
# delimeter ':'

grep -v "^#" "$filename" | cut -f 1 -d ":"

## Same result
# grep -v "^#" "$filename" | awk -F: '{print $1}'