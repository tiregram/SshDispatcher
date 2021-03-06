#!/bin/bash

source ${POS_SCRIPT_PRIV}/utils.sh

if [[ "$1" == "--help-brief" ]]
then
    echo "remove a host to the current SshDispatcher"
    exit
fi

if [[ "$1" == "" || "$1" == "help" || "$1" == "-h" || "$1" == "--help" ]]
then
    echo help #!TODO
    exit
fi


one_host=$1
move_to_sshdistroot

if [ ! -f con/${one_host} ]
then
    echo "Host doesn't exist"
    exit 1
fi

#all in out err and process will be kill by the good process
rm con/$one_host

