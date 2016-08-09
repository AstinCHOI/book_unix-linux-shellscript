#!/bin/sh

# Use: tar, ssh, cat

username="user1"
server="192.168.1.5"

tar cvf - example/log | ssh ${username}@${server} "cat > /backup/myapplog.tar"

# - : print to stdout
# c : write archive
# v : verbose
# f : use archive file


# opposite case
ssh ${username}@${server} "cat /backup/myapplog.tar" | tar xvf -


## tar just binds files, not compresses.
## if you want to compress, add z option