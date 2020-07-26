#!/bin/sh

# ensure ~/.bash_profile exists so we can append to it
touch ~/.bash_profile


# set bash prompt to use colouring 
cat <<EOF >> ~/.bash_profile

export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
EOF


# bash completion
brew install bash-completion
cat << EOF >> ~/.bash_profile

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
EOF


# setup lscolors
cat << EOF >> ~/.bash_profile

export CLICOLOR=YES
export LSCOLORS="Gxfxcxdxbxegedabagacad"
EOF