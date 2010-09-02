# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export EDITOR=vim

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

if [ `uname` == "Darwin" ]; then
  alias ls='ls -G'
  alias top='top -o cpu'
  alias quicklook='qlmanage -p 2>/dev/null'
  function pman() { man -t $@ | open -f -a /Applications/Preview.app; }
else
  alias ls='ls --color=auto'
fi

alias apachestart='sudo apachectl start'
alias apachestop='sudo apachectl stop'

