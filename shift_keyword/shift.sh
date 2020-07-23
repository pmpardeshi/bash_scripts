#!/usr/bin/env bash

echo $@
shift
echo after shift
echo $@

# ouput
# $ ./shift.sh {a..z}
# a b c d e f g h i j k l m n o p q r s t u v w x y z
# after shift
# b c d e f g h i j k l m n o p q r s t u v w x y z
# $ 

#note shift only shifts the positional arguments given by cmd line
#in case there are no cl arguments you can also set codes var as one 
# by set -- vars , the only way to use shift is use cl args  