#!/bin/bash

source ${POS_SCRIPT_PRIV}/utils.sh

if [[ "$1" == "--help-brief" ]]
then
    echo "Clear  to the current SshDispatcher"
    exit
fi

if [[ "$1" == "" || "$1" == "help" || "$1" == "-h" || "$1" == "--help" ]]
then
    echo help #!TODO
    exit
fi


one_host=$1
move_to_sshdistroot

if [[ $@ =~ "log" || $@ =~ "all" ]]
then
echo "Clear log"
echo -n "" > log
fi

if [[ $@ =~ "out" || $@ =~ "all" ]]
then
echo "Clear out"
echo -n "" | tee $(echo out/*) > /dev/null
fi

if [[ $@ =~ "err" || $@ =~ "all" ]]
then
echo "Clear err"
echo -n "" | tee $(echo err/*) > /dev/null
fi
