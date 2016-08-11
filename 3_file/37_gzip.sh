#!/bin/sh

# Use: gzip, bzip2, xz

tar cf archive.tar log

gzip -9 archive.tar

## same command 
# tar cf - log | gzip -9 -c > archive.tar.gz

## gzip options
# -9: maximum compression ratio
# -c: stdout

## linux: bzip2 / FreeBSD: xz

## you can set default as below
# GZIP='-9'; exoirt GZIP