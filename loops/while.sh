#!/usr/bin/env bash

#while[] do <code> done

COUNT=0

while [ $COUNT -lt 10 ]
do
	echo "count is $COUNT "
	((COUNT++))

done

echo "while loop ended at $COUNT "
exit 0

# output
# :~/pypractice/bash/shell scripting$ ./while.sh
# count is 0 
# count is 1 
# count is 2 
# count is 3 
# count is 4 
# count is 5 
# count is 6 
# count is 7 
# count is 8 
# count is 9 
# while loop ended at 10 
# :~/pypractice/bash/shell scripting$ 
