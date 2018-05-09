#!/bin/bash

# Hide last login
touch ~/.hushlogin

# Copy to ~/.bash_aliases or create a backup and update
if [[ -e ~/.bash_aliases ]] ; then
    # Create a backup of ~/.bash_aliases
    echo "~/.bash_aliases already exists"
    echo "Creating a backup and updating file..."
    mkdir -p ~/.bash_aliases-backups/"$backupdate"/
    mv ~/.bash_aliases ~/.bash_aliases-backups/"$backupdate"/
    # Copy to ~/.bash_aliases
    cp ./bash-setup/.bash_aliases ~/.bash_aliases
else  
    # Copy to ~/.bash_aliases
    cp ./bash-setup/.bash_aliases ~/.bash_aliases
fi
echo "~/.bash_aliases updated"

# Copy to ~/.bashrc or create a backup and update
if [[ -e ~/.bashrc ]] ; then
    # Create a backup of ~/.bashrc
    echo "~/.bashrc already exists"
    echo "Creating a backup and updating file..."
    mkdir -p ~/.bashrc-backups/"$backupdate"/
    mv ~/.bashrc ~/.bashrc-backups/"$backupdate"/
    # Copy to ~/.bashrc
    cp ./bash-setup/.bashrc ~/.bashrc
else  
    # Copy to ~/.bashrc
    cp ./bash-setup/.bashrc ~/.bashrc
fi
echo "~/.bashrc updated"

# Copy to ~/.bash_profile or create a backup and update
if [[ -e ~/.bash_profile ]] ; then
    # Create a backup of ~/.bash_profile
    echo "~/.bash_profile already exists"
    echo "Creating a backup and updating file..."
    mkdir -p ~/.bash_profile-backups/"$backupdate"/
    mv ~/.bash_profile ~/.bash_profile-backups/"$backupdate"/
    # Copy to ~/.bash_profile
    cp ./bash-setup/.bash_profile ~/.bash_profile
else  
    # Copy to ~/.bash_profile
    cp ./bash-setup/.bash_profile ~/.bash_profile
fi
echo "~/.bash_profile updated"

#  Source ~/.bash_profile, ~/.bash_aliases, and ~/.bashrc
source ~/.bash_profile