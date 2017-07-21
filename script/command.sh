#!/bin/bash

# !TODO use expresion reg to select only spec host

source ${POS_SCRIPT_PRIV}/utils.sh

if [[ "$1" == "--help-brief" ]]
then
    echo "Command all host in the ssh dispatcher directory"
    exit
    echo a
fi

if [[ "$1" == "help" || "$1" == "-h" || "$1" == "--help" ]]
then
    echo help
    exit
fi

move_to_sshdistroot

printf "*>"

while true
do
    if read -r line
    then
	

	for one_in in in/*
	do
	    echo "$line" > $one_in &
	done
	    
	printf sending...  && wait  && echo DONE

	printf "*>"
    fi
done 

