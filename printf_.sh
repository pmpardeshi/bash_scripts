#!/usr/bin/env bash

DATE=`date +"%d-%m-%Y"`
TIME=`date +"%H:%M:%S"`

printf -v TODAY "date:\t%s \ntime:\t%s " $DATE $TIME
#printf "date:\t%s \ntime:\t%s " $DATE $TIME # prints directly

echo "$TODAY" #double quotes to preserve \n and \t

exit 0


# output
# $ ./printf_.sh 
# date:	20-07-2020 
# time:	15:22:04 
