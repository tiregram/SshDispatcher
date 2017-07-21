#!/bin/bash

# !TODO
# clean log
# print all

source ${POS_SCRIPT_PRIV}/utils.sh

if [[ "$1" == "--help-brief" ]]
then
    echo "Display log"
    exit
    echo a
fi

if [[ "$1" == "help" || "$1" == "-h" || "$1" == "--help" ]]
then
    echo help
    exit
fi
move_to_sshdistroot

tail -f log
