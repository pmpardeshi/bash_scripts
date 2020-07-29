#!/usr/bin/env bash


# "A && B" Run B if A succeeded
# "A || B" Run B if A failed

chk=true

$chk && echo "left condition is true"
$chk || echo "left condition is false"

chk=false
echo changed chk to false

$chk && echo "left condition is true"
$chk || echo "left condition is false"

# output
# $ ./conditions/by_operators.sh
# left condition is true
# changed chk to false
# left condition is false
# $ 

