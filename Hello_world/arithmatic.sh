#!/usr/bin/env bash

#arithmatic operations

A=15
B=5
C=10

#addition
SUM=$(( A + B ))
echo sum is $SUM

#subtraction
SUB=$(( A - B ))
echo difference is $SUB

#multiplication
MULT=$(( A * B ))
echo product is $MULT

#DIVISION
DIV=$(( A / B ))
echo division is $DIV


#DIVISION FOR FLOAT NUM
DIV=$(( A / C ))
echo division for float result is $DIV

#DIVISION FOR FLOAT NUM BASIC CALCULATOR MODULE
#https://stackoverflow.com/questions/12722095/how-do-i-use-floating-point-division-in-bash
#DIV=`echo "scale=2; $A/$C" | bc`
DIV=`bc<<<"scale=2; $A / $C"`
#its the example of here string, string is evaluated then passed
#http://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Here-Strings
echo division for float result with basic calc. is $DIV

#EXPONENTIAL FUNCTION
EXP=$(( A ** B ))
echo $A raise to power $B is $EXP


#SHORTHAND
echo before shorthand $C
(( C += 3 ))
echo after shorthand $C

#increement decreement
echo before increement $C
(( C++ ))
echo after increement $C
(( C-- ))
echo after decreement $C




# output

# $ ./arithmatic.sh 
# sum is 20
# difference is 10
# product is 75
# division is 3
# division for float result is 1
# division for float result with basic calc. is 1.50
# 15 raise to power 5 is 759375
# before shorthand 10
# after shorthand 13
# before increement 13
# after increement 14
# after decreement 13
# $ 








