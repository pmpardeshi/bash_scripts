#!/usr/bin/env bash


while read -r line ; do
 	echo $line | awk '{print $1}'
 done <$1
