#!/usr/bin/env bash

NAMES=$@ #SAME AS READLINE READES WHOLE INPUT IN ARRAY



for NAME in $NAMES # dont put $ to loop var here FILE 
do
	if [ $NAME = "navin" ]
	then
		break #continue - same as python
	fi
	echo "hello $NAME"

done

echo "loop ended"
exit 0


# output
# :~/pypractice/bash/shell scripting$ ./for.sh pramod shubham navin
# hello pramod
# hello shubham
# loop ended
# :~/pypractice/bash/shell scripting$ 
