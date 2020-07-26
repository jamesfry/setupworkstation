#!/bin/sh

# essentials
essentials=(preferences homebrew zsh bash ssh)

# tools - can depend on essentials, eg homebrew
tools=(aws browsers cli-tools collaboration docker git insomnia java jetbrains music nodejs postgres python spectacle unarchiver vscode)

for script in "${essentials[@]}" "${tools[@]}"
do
    sh ./scripts/${script}.sh
done
