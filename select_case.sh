#!/usr/bin/env bash


declare -A DATA

DATA["Name"]="Pramod"
DATA["Age"]="21"
DATA["Education"]="B.E. computer"


select option in "${!DATA[@]}" Exit
do
	case $option in 
		Name) echo Name = ${DATA[Name]} ;;
		Age) echo Age = ${DATA[Age]} ;;
		Education) echo Education = ${DATA[Education]} ;;
		Exit)echo exiting ; break ;;
		*) echo Choose valid option
	esac
done

exit 0

# output

# $ ./select_case.sh 
# 1) Name
# 2) Age
# 3) Education
# 4) Exit
# #? 1
# Name = Pramod
# #? 2
# Age = 21
# #? 3
# Education = B.E. computer
# #? 6
# Choose valid option
# #? 4
# exiting
# $ 


