#!/usr/bin/env bash

declare -A INFO #declare associative array

INFO["college name"]="Govt. Avasari"
INFO[name]="Pramod"

printf " %s did his degree from %s\n" "${INFO[name]}" "${INFO["college name"]}"
#put brackets  if val has spaces or the command will think that it has 3 params
#https://linuxconfig.org/bash-printf-syntax-basics-with-examples

exit 0

# output 
# $ ./associative_array.sh 
#  Pramod did his degree from Govt. Avasari

