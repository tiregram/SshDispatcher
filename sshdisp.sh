#!/bin/bash

# !TODO not in bash

export POS_PRG=/home/margerit/SshDispatcher
export POS_SCRIPT=${POS_PRG}/script
export POS_SCRIPT_PRIV=${POS_PRG}/priv_script

source ${POS_SCRIPT_PRIV}/utils.sh

# no arg then help
if [[ $# =  0 ]]
then
    for MESS in ${POS_SCRIPT}/*.sh
    do
	
	COMMAND=${MESS:${#POS_SCRIPT}+1:-3}
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

