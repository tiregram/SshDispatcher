#!/bin/bash

source ${POS_SCRIPT_PRIV}/utils.sh

if [[ "$1" == "--help-brief" ]]
then
    echo "Destroy the  current SshDispatcher directory and all connection"
    exit
fi

if [[ "$1" == "help" || "$1" == "-h" || "$1" == "--help" ]]
then
    echo help #!TODO
    exit
fi


move_to_sshdistroot
rm con/*
sleep 5
rm ${PWD} -r

