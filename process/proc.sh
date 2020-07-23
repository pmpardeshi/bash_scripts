#!/usr/bin/env bash

STATUS=0

#this script watches the process the terminates with process


if [ -z $1 ]
then 
	echo "please give PID"
	exit 1
fi

echo "watching process $1"


while [ $STATUS -eq 0 ]
do
	`ps $1 > /dev/null` #checks detail of process and writes it to null
	STATUS=$? #checks the last exit code ,its zero if command executed sucessfully,
	           # and nonzero if error occured or process is terminated
done

echo "process $1 has terminated"
exit 0

