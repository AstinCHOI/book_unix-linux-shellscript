#!/bin/sh

# Use: umask

umask 077

echo "ID: abcd123456" > ../example/idinfo.tmp

## if umask 022 -> file permission 644
# 1 1 0 | 1 1 0 | 1 1 0 (666 from script) 
# 0 0 0 | 0 1 0 | 0 1 0 (022 from umask)
# ======================
# 1 1 0 | 1 0 0 | 1 0 0