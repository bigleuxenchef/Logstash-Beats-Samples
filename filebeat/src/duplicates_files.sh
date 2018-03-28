#!/usr/bin/env bash -x
# rumi 2018



for (( i=1; i<=10000; i++))
	do
		echo "Number $i"
		echo $1$i
		cp $1 $1$i
	done
