#!/bin/sh

# Use: nc

port=8080
nc -v -k -l $port

# v for verbose / l for listen / k for keep