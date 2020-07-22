#!/usr/bin/env bash

#read 3 lines from file my solution

COUNT=1

while IFS='' read -r LINE
do
	echo $COUNT $LINE
	
	if [ $COUNT -eq 3 ]
	then
		break
	fi

	((COUNT++))
done <$1

exit 0

# output

# :~/pypractice/bash/shell scripting$ ./read3.sh names.txt
# 1 pramod
# 2 shubham
# 3 navin
# :~/pypractice/bash/shell scripting$ 
