#!/usr/bin/env bash

DELAY=$1

if [ -e $DELAY ]
then
	echo insert a valid delay
	exit 1 
fi
echo stopping for $DELAY seconds
sleep $DELAY
echo restarted
exit 0

# output
# :~/pypractice/bash/shell scripting$ ./delay.sh 2
# stopping for 2 seconds
# restarted
# :~/pypractice/bash/shell scripting$ ./delay.sh 
# insert a valid delay
# :~/pypractice/bash/shell scripting$ 


