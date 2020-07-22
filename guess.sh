#!/usr/bin/env bash

COMPUTER=25
WON=0

while [ $WON -eq 0 ]
do
	read -p "guess a number in my mind " NUM

	if [[ $NUM -lt $COMPUTER ]]
	then
		echo "guess again little higher this time "
		continue
	
	elif [[ $NUM -gt $COMPUTER ]]
	then
		echo "guess again little lower this time "
		continue
	
	elif [[ $NUM -eq $COMPUTER ]]
	then
		echo "You guessed it right !!! "
		
	fi

	WON=1
	
done 

echo game ended


# output

# :~/pypractice/bash/shell scripting$ ./guess.sh 
# guess a number in my mind 20
# guess again little higher this time 
# guess a number in my mind 30
# guess again little lower this time 
# guess a number in my mind 26
# guess again little lower this time 
# guess a number in my mind 25
# You guessed it right !!! 
# game ended
# :~/pypractice/bash/shell scripting$ 
