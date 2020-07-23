#!/usr/bin/env bash

COUNT_END=$1
CUR_COUNT=1

while [ "$CUR_COUNT" -le "$COUNT_END"  ] 
#if you dont quote var and its empty it vanishes like it was never there
#https://stackoverflow.com/questions/13617843/unary-operator-expected-error-in-bash-if-condition
do
	echo "current count $CUR_COUNT"
	((CUR_COUNT++))
done

echo "loop finished"
exit 0


# output
#  ./counter.sh 10
# current count 1
# current count 2
# current count 3
# current count 4
# current count 5
# current count 6
# current count 7
# current count 8
# current count 9
# current count 10
# loop finished
#  

