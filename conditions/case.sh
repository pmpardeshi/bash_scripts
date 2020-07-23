#!/usr/bin/env bash


#case opt in
#opt) action ;;< end of action (break)
# see also select case

declare -A DATA

DATA["Name"]="Pramod"
DATA["Age"]="21"
DATA["Education"]="B.E. computer"

EXIT=0
#case statements

while [[ $EXIT -eq 0 ]]
do

	printf "\nMy Data"
	printf "\n1.Name\t2.Age\n3.Education\t4.Exit\n"
	read -p "what do you want to know: " OPT #never use $ while assigning value like here

	echo "you choose $OPT"
	case "$OPT" in
		1 ) echo "${DATA[Name]}" ;; 
		2 ) echo "${DATA[Age]}" ;;
		3 ) echo "${DATA[Education]}" ;; 
		4 ) echo "bye!!!" ; EXIT=1 ;; 
		* ) echo "Invalid Choice" ;; 
	esac
done


exit 0


# output
# $ ./case.sh

# My Data
# 1.Name	2.Age
# 3.Education	4.Exit
# what do you want to know: 1
# you choose 1
# Pramod

# My Data
# 1.Name	2.Age
# 3.Education	4.Exit
# what do you want to know: 2
# you choose 2
# 21

# My Data
# 1.Name	2.Age
# 3.Education	4.Exit
# what do you want to know: 3
# you choose 3
# B.E. computer

# My Data
# 1.Name	2.Age
# 3.Education	4.Exit
# what do you want to know: 5
# you choose 5
# Invalid Choice

# My Data
# 1.Name	2.Age
# 3.Education	4.Exit
# what do you want to know: 4
# you choose 4
# bye!!!
# $ 
