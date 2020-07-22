#!/usr/bin/env bash

#syntax if[]/[[]] then elif [] then else fi
COLOR=$1

if [[ $COLOR = "blue" ]]
then
	echo "the color is blue"
else
	echo "the color is $COLOR "
fi

USER_GUESS=$2
COMP_VAL=50

if [[ $USER_GUESS -lt $COMP_VAL ]]
then
	echo "less than mine"
elif [[ $USER_GUESS -gt $COMP_VAL ]]
then
	echo "greater than mine"
else
	echo "equal to mine"
fi

exit 0

#output
# :~/pypractice/bash/shell scripting$ ./if.sh blue 40
# the color is blue
# less than mine
# :~/pypractice/bash/shell scripting$ ./if.sh orange 40
# the color is orange 
# less than mine
# :~/pypractice/bash/shell scripting$ ./if.sh orange 60
# the color is orange 
# greater than mine
# :~/pypractice/bash/shell scripting$ ./if.sh orange 50
# the color is orange 
# equal to mine
# :~/pypractice/bash/shell scripting$ 
