#!/usr/bin/env bash

# to print name of first 10 sh files without .sh extention

counter=01

echo File names without extention :
for file in `ls | head -n10` ; do
	printf "File %02d : %s\n" "$counter" "${file%".sh"}" #postfix removal
	((counter++))
done

#output
# $ ./suffix.sh
# File names without extention :
# File 01 : arithmatic
# File 02 : array
# File 03 : associative_array
# File 04 : case
# File 05 : counter
# File 06 : cstyle_for
# File 07 : default
# File 08 : delay
# File 09 : env
# File 10 : for_assoc_arrray
# $ 

