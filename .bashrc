# .bashrc

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE

export VISUAL=vim
export EDITOR="$VISUAL"

# User specific aliases and functions

alias cls='clear'

alias ll='ls -alF'

alias shrug="echo '¯\_(ツ)_/¯'"

shopt -s globstar

alias xclip="xclip -selection clipboard"

alias capsesc="setxkbmap -option caps:escape"

alias cat="cat -v"
