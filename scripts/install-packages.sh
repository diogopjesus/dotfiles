#!/bin/bash

set -e

# run script as sudo
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

packagelist="package.list"
flatpaklist="package-flatpak.list"

if [ ! -f $packagelist ] || [ ! -f $flatpaklist ];
then
    echo "Error: package lists are not available!"
    exit 1
fi

# install packages in file
apt install $(grep -vE "^\s*#" $packagelist | tr "\n" " ")

# install flatpak packages
flatpak install $(grep -vE "^\s*#" $flatpaklist | tr "\n" " ")

