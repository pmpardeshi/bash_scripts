#!/usr/bin/env bash

FILE=$1
if [ -z $FILE ]; then
	echo "invalid argument: usage: ./script.sh filename"
	exit 1
fi
touch $FILE
chmod 755 $FILE
printf "#!/usr/bin/env bash\n" >> $FILE
subl $FILE