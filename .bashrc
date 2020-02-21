# .bashrc

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE

export VISUAL=nvim
export EDITOR="$VISUAL"

# User specific aliases and functions

alias cls='clear'

alias cocker-dompose='docker-compose'

#eval $(thefuck --alias)

alias shrug="echo '¯\_(ツ)_/¯'"

#shopt -s globstar

#alias murder-android-cache="rm -rf /tmp/metro-* && rm -rf ~/.android/build-cache && rm -rf node_modules/ && npm cache clean --force && npm ci"

alias xclip="xclip -selection clipboard"
