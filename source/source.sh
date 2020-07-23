#!/usr/bin/env bash
x=22

# output
# $ echo $x
# 				# no value
# $ ./source.sh
# $ echo $x

# $ 

# we got empty string for x as this script
# is run in its own process that ended with the script
# if if we want to access x after script then we have to run this script inside bash process itself 
# so that the value of x will be stored till bash ends 
# its done using source or . "dot space"


# $ source ./source.sh //script is run inside bash process
# $ echo $x //thus x is kept till bash process is terminated
# 22
# $ x=1
# $ echo $x
# 1
# $ . ./source.sh 
# $ echo $x
# 22
# $ unset x  //to unset var before terminating bash
# $ echo $x

# $ 


