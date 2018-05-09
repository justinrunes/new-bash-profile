#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------
 
#   Change Prompt
#   ------------------------------------------------------------
    export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u@\h\[\033[00m\]: \[\033[01;32m\]\w\[\033[00m\] $ '
    tput reset
 
#   Set Default Editor (change 'Vim' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/vim
 
#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Source ~/.bashaliases
#   ------------------------------------------------------------
    if [ -f ~/.bash_aliases ] ; then
        source ~/.bash_aliases
    fi

#   Source ~/.bashrc
#   ------------------------------------------------------------
    if [ -f ~/.bashrc ] ; then
        source ~/.bashrc
    fi

# Clear screen
clear