#!/usr/bin/env bash

COUNT=1

while IFS='' read -r LINE #-r to read escape characters as well
do
	echo "LINE $COUNT: $LINE"
	((COUNT++))
done < "$1" #for input

exit 0

