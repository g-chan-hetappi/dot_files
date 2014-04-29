# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set bell-style none
umask 022

alias ls='ls -F --color  --time-style="+%Y/%m/%d %H:%M:%S"'
alias ll="ls -la  --time-style='+%Y/%m/%d %H:%M:%S' --color=auto"
alias shutdown='shutdown -h now'

#PS1="[\s]\u@\H:\w\n$ "
if [ $TERM == "vt100" ] || [ $TERM == "xterm" ] 
then
  PS1="\033]2;\u@\H:\w\007\n[\t]\u@\H:\w\n$ "
else
  PS1="\w $ "
fi

export SVN_EDITOR="vim"
export PATH="$PATH:/sbin"

# dircolors
#if [ -f ~/.dir_colors ]; then
#  eval '/usr/bin/dircolors -b ~/.dir_colors'
#fi
