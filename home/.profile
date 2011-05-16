# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

PATH="$PATH:/usr/local/sbin"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f ~/.bashrc ]; then
      . ~/.bashrc
    fi
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PS1='\[\033[0;31m\]$($rvm_path/bin/rvm-prompt u g s)\[\033[00m\] \[\033[0;38m\]\u:\[\033[0;36m\]\w \[\033[0;35m\]$(__git_ps1 "(%s) ")\[\033[01;34m\]\$ \[\033[00m\]'
