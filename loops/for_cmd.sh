#!/usr/bin/env bash

#for loop with command

for file in `ls | head -10`
do
	echo "$file"
done

# output
# $ ./for_cmd.sh 
# arithmatic.sh
# array.sh
# associative_array.sh
# counter.sh
# cstyle_for.sh
# delay.sh
# env.sh
# for_assoc_arrray.sh
# for_cmd.sh
# for_numloop.sh
# $ 


