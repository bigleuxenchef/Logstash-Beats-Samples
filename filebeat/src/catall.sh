#!/usr/bin/env bash -x

timestamp=$(date +%s)

MYCWD=$(pwd)

cd /usr/local/var/jenkins
basetime=$(date +%s)
ls -l1 | xargs -P8 -I file cat file > /tmp/test.log
totaltime=$(echo "($(date +%s) - ${basetime})" | bc)
echo "runtime: ${totaltime} seconds"

cd $MYCWD
