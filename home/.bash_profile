# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f ~/.bashrc ]; then
      . ~/.bashrc
    fi
fi

# Quiets macOS Catalina's zsh warning
# https://support.apple.com/kb/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
