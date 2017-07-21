#!/bin/bash

if [[ "$1" == "--help-brief" ]]
then
    echo "Add a host to the current SshDispatcher"
    exit
    echo a
fi

if [[ "$1" == "" || "$1" == "help" || "$1" == "-h" || "$1" == "--help" ]]
then
    echo help
    exit
fi

