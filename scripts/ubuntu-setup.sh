#!/bin/bash

# Ubuntu setup
if [[ -e ~/.profile ]] ; then
    # comment
    alias ls='ls -FGlthpa --color=auto'
    source ~/.bash_profile
fi

echo "Completed Ubuntu setup"