#!/bin/sh

# Docker
# Using the cask gets the dmg from the docker store and gives the gui tools
brew install --cask docker

# Docker compose
brew install docker-compose

# docker alternative method
#brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve
#sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
#sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
#docker-machine create default --driver xhyve --xhyve-experimental-nfs-share

# docker / docker machine completion
brew install docker-completion
brew install docker-machine-completion
