# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE

# User specific aliases and functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias cls='clear'

alias cocker-dompose='docker-compose'

#eval $(thefuck --alias)

alias shrug="echo '¯\_(ツ)_/¯'"

#shopt -s globstar

#alias murder-android-cache="rm -rf /tmp/metro-* && rm -rf ~/.android/build-cache && rm -rf node_modules/ && npm cache clean --force && npm ci"
