#!/bin/bash

# Aliases
if [[ -e ~/.bash_aliases ]] ; then
    source ~/.bash_aliases
fi

sleep 1

# Reset
./reset.sh

# Npm setup
printf "Do you want to run npm setup? (y/n) "
read res
if [ "$res" == "yes" ] || [ "$res" == "y" ] ; then
    ./scripts/npm-setup.sh
fi

# Bash setup
printf "Do you want to run bash setup? (y/n) "
read res
if [ "$res" == "yes" ] || [ "$res" == "y" ] ; then
    ./scripts/bash-setup.sh
fi