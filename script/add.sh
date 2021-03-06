#!/bin/bash

source ${POS_SCRIPT_PRIV}/utils.sh

if [[ "$1" == "--help-brief" ]]
then
    echo "Add a host to the current SshDispatcher"
    exit
fi

if [[ "$1" == "" || "$1" == "help" || "$1" == "-h" || "$1" == "--help" ]]
then
    echo help #!TODO
    exit
fi


one_host=$1
move_to_sshdistroot

if [ -f con/${one_host} ]
then
    echo "host exist"
    continue
fi

nohup ${POS_SCRIPT_PRIV}/connection.sh ${one_host}  >>  log 2>&1 &

