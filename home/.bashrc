# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export EDITOR=vim

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

# git completion
if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
  source '/usr/local/etc/bash_completion.d/git-completion.bash'
fi

# brew completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# rvm completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

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

