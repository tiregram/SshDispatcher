#!/bin/bash

POS_PRG=.
POS_SCRIPT=${POS_PRG}/script/

# no arg then help
if [[ $# =  0 ]]
then
    for MESS in ${POS_SCRIPT}*
    do
	COMMAND=${MESS:${#POS_SCRIPT}:-3}
	echo -e '>' $COMMAND '\t\t' $($MESS --help-brief)
    done
    exit
fi

# call subscript if exist
if [[ -f ${POS_SCRIPT}/$1.sh ]]
then
    exec ${POS_SCRIPT}/$1.sh ${@#$1}
else
    echo sub command not found
fi

