#!/usr/bin/env bash 
# rumi 2018
# catall.sh <arg1> <arg2>
# <arg1> : path where all files need to be aggregated
# <arg2> : targetfile to contain all aggregated files from path in <arg1>

timestamp=$(date +%s)

echo "source directory $1 ..."

basetime=$(date +%s)
ls -l1 $1| xargs -P8 -I file cat $1/file > $2
totaltime=$(echo "($(date +%s) - ${basetime})" | bc)
echo "runtime: ${totaltime} seconds"

