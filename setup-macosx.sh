#!/bin/bash

# Various dock preferences
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock orientation -string left
# Top right screen corner = Mission Control
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
defaults write com.apple.dock wvous-tr-modifier -int 2

# Finder: Set Desktop as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"
defaults write com.apple.finder NewWindowTarget -string "PfDe"

# Finder: Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -string YES

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# trackpad tap-to-click / two finger click (needs restart) via https://osxdaily.com/2014/01/31/turn-on-mac-touch-to-click-command-line/
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# key repeat
# normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -int 10

# normal minimum is 2 (30 ms)
defaults write -g KeyRepeat -int 1

# hotcorners - via https://blog.jiayu.co/2018/12/quickly-configuring-hot-corners-on-macos/
defaults write com.apple.dock "wvous-bl-corner" -int 4
defaults write com.apple.dock "wvous-bl-modifier" -int 0
defaults write com.apple.dock "wvous-tl-corner" -int 2
defaults write com.apple.dock "wvous-tl-modifier" -int 0
defaults write com.apple.dock "wvous-tr-corner" -int 3
defaults write com.apple.dock "wvous-tr-modifier" -int 0


# Never sleep when on power
sudo systemsetup -setcomputersleep Never


# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# create an ssh key
ssh-keygen -b 4096 -t rsa -f $HOME/.ssh/id_rsa -q -N "" 0>&-

# ensure ~/.bash_profile exists so we can append to it
touch ~/.bash_profile


# set bash prompt to use colouring 
cat <<EOF >> ~/.bash_profile

export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
EOF


# Install Homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# bash completion (Homebrew)
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


# Git (Homebrew) - This gives git gui, gitk etc
brew install git
brew install git-gui


# Google Chrome (Homebrew cask)
brew cask install google-chrome


# Docker (Homebrew cask)
# Using the cask gets the dmg from the docker store and gives the gui tools
brew cask install docker


# Docker compose (Homebrew)
brew install docker-compose


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


# vscode extensions
for extension in \
    codezombiech.gitignore \
    CoenraadS.bracket-pair-colorizer \
    dakara.transformer \
    dbaeumer.vscode-eslint \
    eg2.tslint \
    eg2.vscode-npm-script \
    foxundermoon.shell-format \
    kumar-harsh.graphql-for-vscode \
    mechatroner.rainbow-csv \
    mohsen1.prettify-json \
    passionkind.prettier-vscode-with-tabs \
    vscjava.vscode-maven
do
    code --install-extension $extension
done


# node.js - Install  nvm
touch ~/.bash_profile

# install LTS release of node
nvm install --lts

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


# GNU parallel (xargs with a decent job queue)
brew install parallel


# AWS
brew install awscli


# pip3 upgrade
sudo pip3 install --upgrade pip3


# python pipenv
sudo pip3 install pipenv


# Slack (Homebrew cask)
brew cask install slack


# Microsoft Teams (Homebrew cask)
brew cask install microsoft-teams


# pgadmin4 (Homebrew cask)
brew cask install pgadmin4


# Spectacle window snapping++ (Homebrew cask)
brew cask install spectacle


# VLC (Homebrew cask)
brew cask install vlc


# Java
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk11-openj9
brew cask install adoptopenjdk8-openj9


# Apache Maven (Homebrew)
brew install maven


# Datagrip (Homebrew cask)
brew cask install jetbrains-toolbox


# Setup James dark terminal profile
profile=$(<terminal-profile.xml)
plutil -replace Window\ Settings.James2 -xml "$profile" ~/Library/Preferences/com.apple.Terminal.plist
defaults write com.apple.Terminal "Default Window Settings" -string "James"
defaults write com.apple.Terminal "Startup Window Settings" -string "James"


# git config
git config --global user.name "James Fry"
git config --global user.email "james.fry@jrfsolutions.co.uk"


# zsh stuff
brew install zplug
