#!/usr/bin/env bash

FILES=`ls -1 | sort -r | head -3 `
COUNT=1

for FILE in $FILES
do
	echo "File $COUNT : $FILE "
	((COUNT++))
done

# output
# :~/pypractice/bash/shell scripting$ ./pipe.sh
# File 1 : while.sh 
# File 2 : vars.sh 
# File 3 : sports.sh 
# :~/pypractice/bash/shell scripting$ 



exit 0