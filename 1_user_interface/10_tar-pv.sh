#!/bin/sh

# Use: pv, tar, gzip

# brew install pv

DATA_DIR=~/Desktop

cd $DATA_DIR

tar cf - bigfile1.dat bigfile2.dat | pv | gzip > archive.tar.gz