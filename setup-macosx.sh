#!/bin/sh

# Install latest Homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install mas

for script in scripts/essentials/*.sh scripts/tools/*.sh
do
    sh ${script}
done

rsync -av --ignore-existing --progress dotfiles/ ~/
