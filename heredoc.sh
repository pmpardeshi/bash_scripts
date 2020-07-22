#!/usr/bin/env bash

#heredoc are used to give multiple inputs to act as doc
#here doc used by << and to ignore tabs use <<-
#give all below lines to cat till ! ocures
cat <<- !
these lines 
	are multiline
heredoc
!


# output
# $ ./heredoc.sh 
# these lines 
# are multiline
# heredoc
# $ 
