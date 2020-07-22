#!/usr/bin/env bash

#unitl loop runs till the condition is false

J=0

until [ $J -ge 10 ]
do
	echo j:$J
	((J++))
done


# output

# $ ./untilloop.shj:0
# j:1
# j:2
# j:3
# j:4
# j:5
# j:6
# j:7
# j:8
# j:9
# $ 


