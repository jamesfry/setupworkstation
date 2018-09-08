#!/bin/bash

# Install Homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# bash completion (Homebrew)
brew install bash-completion
touch ~/.bash_profile
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


# Oracle Java (Homebrew cask)
brew cask install java


# nwode.js - Install  nvm
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash


# yarn - install through npm
npm install -g yarn


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


# Datagrip (Homebrew cask)
brew cask install datagrip


# Eclipse Java (Homebrew cask)
brew cask install eclipse-java
