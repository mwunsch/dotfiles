# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export EDITOR=vim
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

# git completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# brew completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
fi

if [ `uname` == "Darwin" ]; then
  alias ls='ls -G'
  alias top='top -o cpu'
  alias quicklook='qlmanage -p 2>/dev/null'
  function pman() { man -t $@ | open -f -a /Applications/Preview.app; }
else
  alias ls='ls --color=auto'
fi

if [ `command -v mvim` ]; then
  alias vim='mvim -v'
fi

if [[ -d "$HOME/Go" && `command -v go` ]]; then
  export GOPATH="$HOME/Go"
fi


alias git=hub

alias apachestart='sudo apachectl start'
alias apachestop='sudo apachectl stop'
alias mongostart='mongod --config `brew --cellar mongodb`/1.8.1-x86_64/mongod.conf'

alias mit-license='curl -fsSL http://git.io/license | sh'
function puthtml() { curl -F "file=@${1:--};filename=${1:-`uuidgen`.html}" -F "api_key=${2:-$PUTHTML_API_KEY}" http://www.puthtml.com/; }
function lookbusy() { cat /dev/urandom | od -An; }

PS1='\[\033[0;38m\]\u:\[\033[0;36m\]\w \[\033[0;35m\]$(__git_ps1 "(%s) ")\[\033[1;36m\]\$ \[\033[00m\]'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
