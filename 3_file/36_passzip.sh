#!/bin/sh

# Use: zip

logdir="../example"

cd "$logdir"

zip -e -r log.zip .
# Enter password:
# Verify password:


# -e : encrypt option
# -r : recursive option