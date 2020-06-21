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

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes


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
    PeterJausovec.vscode-docker \
    robertohuertasm.vscode-icons \
    vscjava.vscode-maven
do
    code --install-extension $extension
done


# node.js - Install  nvm
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# install LTS release of node
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts

# add NVM to ~/.bash_profile
cat <<EOF >>~/.bash_profile

export NVM_DIR="$HOME/.nvm"
# load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# load nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm use --lts
EOF

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


# Microsoft Teams (Homebrew cask)
brew cask install microsoft-teams


# Skype for Business / Lync (Homebrew cask)
brew cask install skype-for-business


# Skype (Homebrew cask)
brew cask install skype


# pgadmin4 (Homebrew cask)
brew cask install pgadmin4


# Oracle Java (Homebrew cask)
brew cask install java


# Apache Maven (Homebrew)
brew install maven


# Eclipse Java (Homebrew cask)
brew cask install eclipse-java


# Datagrip (Homebrew cask)
brew cask install datagrip


# Yourkit Java Profiler (Homebrew cask)
brew cask install yourkit-java-profiler


# Apache Directory Studio LDAP/AD (Homebrew cask)
brew cask install apache-directory-studio


# python (Homebrew)
brew install pipenv


# Spectacle window snapping++ (Homebrew cask)
brew cask install spectacle


# VLC (Homebrew cask)
brew cask install vlc
