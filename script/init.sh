#!/bin/bash

if [[ "$1" == "--help-brief" ]]
then
    echo "Init a SshDispatcher"
    exit
    echo a
fi


if [[ "$1" == "" || "$1" == "help" || "$1" == "-h" || "$1" == "--help" ]]
then
    echo help
    exit
fi


    

mkdir "$1"
cd $1
mkdir in out err con
mkfifo cmd_all
touch log

echo DONE
