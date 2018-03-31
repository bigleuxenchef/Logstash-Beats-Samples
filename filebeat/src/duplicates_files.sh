#!/usr/bin/env bash
# rumi 2018

# usage : duplicates_files.sh <file>
# generate in the same folder as <file> 10000 files like <file><number from 1 to 10000> 
usage()
{
    echo "usage: duplicates_files.sh [-f <file>] [-n <number of file to create:default 10>]| [-h]]"
}

NUMBER_OF_COPY=10 #Default value

while [ "$1" != "" ]; do
    case $1 in
        -f | --file )		shift
				INPUTFILE=$1
                                ;;
        -n | --number-of-copy ) shift
				NUMBER_OF_COPY=$1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done

for (( i=1; i<=$NUMBER_OF_COPY; i++))
	do
		echo -ne "Number $i  $INPUTFILE$i \r"
		cp $INPUTFILE $INPUTFILE$i
	done
echo -e "\n\ndone !"
