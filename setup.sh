#!/bin/sh

if [ ! -d "./vendor" ]
then
    mkdir "./vendor"
fi


if [ ! -e "./vendor/dired+.el" ]
then
    wget https://raw.githubusercontent.com/emacsmirror/emacswiki.org/master/dired%2B.el
fi
