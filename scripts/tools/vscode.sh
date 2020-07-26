#!/bin/sh

# Visual Studio Code
brew cask install visual-studio-code

# vscode extensions
for extension in \
    amazonwebservices.aws-toolkit-vscode \
    Arjun.swagger-viewer \
    codezombiech.gitignore \
    CoenraadS.bracket-pair-colorizer \
    dakara.transformer \
    dbaeumer.vscode-eslint \
    eg2.tslint \
    eg2.vscode-npm-script \
    foxundermoon.shell-format \
    hashicorp.terraform \
    jumpinjackie.vscode-map-preview \
    kumar-harsh.graphql-for-vscode \
    mechatroner.rainbow-csv \
    mohsen1.prettify-json \
    ms-azuretools.vscode-docker \
    ms-vscode-remote.remote-containers \
    ms-vscode.hexeditor \
    ms-vscode.vscode-typescript-tslint-plugin \
    passionkind.prettier-vscode-with-tabs \
    RandomFractalsInc.geo-data-viewer \
    redhat.vscode-yaml \
    vscjava.vscode-maven
do
    code --install-extension $extension
done
