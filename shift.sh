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
