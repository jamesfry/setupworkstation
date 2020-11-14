#!/bin/sh

# Visual Studio Code
brew cask install visual-studio-code

# vscode extensions
for extension in \
    amazonwebservices.aws-toolkit-vscode \
    Arjun.swagger-viewer \
    bradymholt.pgformatter \
    codezombiech.gitignore \
    CoenraadS.bracket-pair-colorizer \
    dakara.transformer \
    DavidAnson.vscode-markdownlint \
    dbaeumer.vscode-eslint \
    dongido.sync-env \
    DotJoshJohnson.xml \
    eg2.tslint \
    eg2.vscode-npm-script \
    esbenp.prettier-vscode \
    foxundermoon.shell-format \
    hancel.markdown-image \
    hashicorp.terraform \
    jpoissonnier.vscode-styled-components \
    jumpinjackie.vscode-map-preview \
    kisstkondoros.vscode-gutter-preview \
    kumar-harsh.graphql-for-vscode \
    mechatroner.rainbow-csv \
    mikestead.dotenv \
    mohsen1.prettify-json \
    ms-azuretools.vscode-docker \
    ms-ossdata.vscode-postgresql \
    ms-vscode-remote.remote-containers \
    ms-vscode.cpptools \
    ms-vscode.hexeditor \
    ms-vscode.vscode-typescript-tslint-plugin \
    mtxr.sqltools \
    mushan.vscode-paste-image \
    passionkind.prettier-vscode-with-tabs \
    RandomFractalsInc.geo-data-viewer \
    redhat.java \
    redhat.vscode-yaml \
    silvenon.mdx \
    SonarSource.sonarlint-vscode \
    timonwong.shellcheck \
    VisualStudioExptTeam.vscodeintellicode \
    vsciot-vscode.vscode-arduino \
    vscjava.vscode-java-debug \
    vscjava.vscode-java-dependency \
    vscjava.vscode-java-pack \
    vscjava.vscode-java-test \
    vscjava.vscode-maven \
    yzhang.markdown-all-in-one
do
    echo code --install-extension $extension
done
