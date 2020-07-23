#!/usr/bin/env bash

Name="mr.pramod"
echo name $Name
echo after prefix is removed name : ${Name#"mr."}

# output
# $ ./prefix.sh 
# name mr.pramod
# after prefix is removed name : pramod
# $ 