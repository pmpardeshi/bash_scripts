#!/usr/bin/env bash

#fuction for checling local vars
locvars(){
local A
typeset B
declare C #different ways to declare local vars
A=4
B=5
C=6

printf "\nlocal A:%s local B:%s local C:%s\n" "$A" "$B" "$C"

return
}

A=1
B=2
C=3

locvars

printf "\nglobal A:%s global B:%s global C:%s\n" "$A" "$B" "$C"

exit 0