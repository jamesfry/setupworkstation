#!/bin/bash

# ensure ~/.bash_profile exists so we can append to it
touch ~/.bash_profile


# set bash prompt to use colouring 
echo <<EOF >> ~/.bash_profile
echo PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
EOF


# Install Homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# bash completion (Homebrew)
brew install bash-completion
echo << EOF >> ~/.bash_profile
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
EOF


# Git (Homebrew) - This gives git gui, gitk etc
brew install git


# Google Chrome (Homebrew cask)
brew cask install google-chrome


# Ddcker (Homebrew cask)
# Using the cask gets the dmg from the docker store and gives the gui tools
brew cask install docker


# docker alternative method (Homebrew)
#brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve
#sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
#sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
#docker-machine create default --driver xhyve --xhyve-experimental-nfs-share


# docker / docker machine completion (Homebrew)
brew install docker-completion
brew install docker-machine-completion


# Visual Studio Code (Homebrew cask)
brew cask install visual-studio-code


# node.js - Install  nvm
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash


# yarn - install through npm
npm install -g yarn


# p7zip (Homebrew)
brew install p7zip


# htop (Homebrew)
brew install htop


# wget (Homebrew)
brew install wget


# nmap (Homebrew)
brew install nmap


# watch (Homebrew)
brew install watch


# Slack (Homebrew cask)
brew cask install slack


# pgadmin4 (Homebrew cask)
brew cask install pgadmin4


# Oracle Java (Homebrew cask)
brew cask install java


# Eclipse Java (Homebrew cask)
brew cask install eclipse-java


# Datagrip (Homebrew cask)
brew cask install datagrip


# Yourkit Java Profiler (Homebrew cask)
brew cask install yourkit-java-profiler


# Apache Directory Studio LDAP/AD (Homebrew cask)
brew cask install apache-directory-studio

