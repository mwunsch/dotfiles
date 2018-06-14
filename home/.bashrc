# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export EDITOR=vim
export PAGER=less
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

# git completion
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi

if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
fi

# brew completion
if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi

if [ `uname` == "Darwin" ]; then
  alias ls='ls -G'
  alias top='top -o cpu'
  alias quicklook='qlmanage -p 2>/dev/null'
  alias yesterday='date -r $((`date +%s` - 86400))'
  function pman() { man -t $@ | open -f -a /Applications/Preview.app; }
fi

if [ `command -v mvim` ]; then
  alias vim='mvim -v'
fi

if [[ -d "$HOME/Go" && `command -v go` ]]; then
  export GOPATH="$HOME/Go"
fi

if [[ `command -v hub` ]]; then
  alias git=hub
fi

alias mit-license='curl -fsSL http://git.io/license | sh'
function puthtml() { curl -F "file=@${1:--};filename=${1:-`uuidgen`.html}" -F "api_key=${2:-$PUTHTML_API_KEY}" http://www.puthtml.com/; }
function lookbusy() { cat /dev/urandom | od -An; }

function c99sh() {
    # just a little hacky script to run a C program from Standard
    # Input. Inspired by the book *21st Century C*. For something more
    # robust see: https://github.com/RhysU/c99sh
    tmpfile=`mktemp`
    trap "rm -f $tmpfile" EXIT
    cc -xc - -g -Wall -O3 -o "$tmpfile" -include stdio.h $@ && $tmpfile
}

PS1='\[\033[0;38m\]\u:\[\033[0;36m\]\w \[\033[0;35m\]$(__git_ps1 "(%s) ")\[\033[1;36m\]\$ \[\033[00m\]'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
