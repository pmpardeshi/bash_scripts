#!/usr/bin/env bash

while IFS='' read -r LINE
do
	echo $LINE
done <$1

exit 0


# output

# :~/pypractice/bash/shell scripting$ ./pipreader.sh  pipe.sh
# #!/usr/bin/env bash

# FILES=`ls -1 | sort -r | head -3 `
# COUNT=1

# for FILE in $FILES
# do
# echo "File $COUNT : $FILE "
# ((COUNT++))
# done

# # output
# # :~/pypractice/bash/shell scripting$ ./pipe.sh
# # File 1 : while.sh
# # File 2 : vars.sh
# # File 3 : sports.sh
# # :~/pypractice/bash/shell scripting$



# :~/pypractice/bash/shell scripting$ 


