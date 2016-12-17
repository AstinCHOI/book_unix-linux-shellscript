#!/bin/sh

# Use: yum

pkglist="httpd zsh xz git"

for pkg in $pkglist
do
  yum -y install $pkg
done