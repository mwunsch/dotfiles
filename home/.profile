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

# git completion
if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
  source '/usr/local/etc/bash_completion.d/git-completion.bash'
  PS1='\[\033[38m\]\u:\[\033[01;36m\]\w \[\033[35m\]$(__git_ps1 "(%s) ")\[\033[37m\]\$ \[\033[00m\]'
fi

# brew completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

