#!/usr/bin/env bash

#until is another alternative for reading lines not ending with new line character
#when read fails it still runs setting conition true which terminats loop in next iteration

COND=false
until $COND
do
	read line || COND=true
	echo $line
done<$1
