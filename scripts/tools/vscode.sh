#!/bin/sh

# Visual Studio Code
brew install --cask visual-studio-code

# vscode extensions
for extension in \
    4ops.terraform \
    amazonwebservices.aws-toolkit-vscode \
    arjun.swagger-viewer \
    austenc.tailwind-docs \
    batisteo.vscode-django \
    be5invis.toml \
    boto3typed.boto3-ide \
    bradlc.vscode-tailwindcss \
    bradymholt.pgformatter \
    codezombiech.gitignore \
    dakara.transformer \
    davidanson.vscode-markdownlint \
    dbaeumer.vscode-eslint \
    dongido.sync-env \
    donjayamanne.python-environment-manager \
    donjayamanne.python-extension-pack \
    dotjoshjohnson.xml \
    eamodio.gitlens \
    eg2.tslint \
    esbenp.prettier-vscode \
    firefox-devtools.vscode-firefox-debug \
    foxundermoon.shell-format \
    github.vscode-github-actions \
    hancel.markdown-image \
    hashicorp.terraform \
    hbenl.vscode-test-explorer \
    jeppeandersen.vscode-kafka \
    jumpinjackie.vscode-map-preview \
    kevinrose.vsc-python-indent \
    kisstkondoros.vscode-gutter-preview \
    kumar-harsh.graphql-for-vscode \
    littlefoxteam.vscode-python-test-adapter \
    mark-tucker.aws-cli-configure \
    mechatroner.rainbow-csv \
    mikestead.dotenv \
    mohsen1.prettify-json \
    ms-azuretools.vscode-docker \
    ms-edgedevtools.vscode-edge-devtools \
    ms-kubernetes-tools.vscode-kubernetes-tools \
    ms-ossdata.vscode-postgresql \
    ms-python.autopep8 \
    ms-python.debugpy \
    ms-python.isort \
    ms-python.pylint \
    ms-python.python \
    ms-python.vscode-pylance \
    ms-toolsai.jupyter \
    ms-toolsai.jupyter-keymap \
    ms-toolsai.jupyter-renderers \
    ms-toolsai.vscode-jupyter-cell-tags \
    ms-toolsai.vscode-jupyter-slideshow \
    ms-vscode-remote.remote-containers \
    ms-vscode.cpptools \
    ms-vscode.hexeditor \
    ms-vscode.makefile-tools \
    ms-vscode.test-adapter-converter \
    ms-vscode.vscode-typescript-tslint-plugin \
    mtxr.sqltools \
    mushan.vscode-paste-image \
    naco-siren.gradle-language \
    nicolasvuillamy.vscode-groovy-lint \
    njpwerner.autodocstring \
    passionkind.prettier-vscode-with-tabs \
    rafwilinski.dynamodb-vscode-snippets \
    randomfractalsinc.geo-data-viewer \
    randomfractalsinc.vscode-data-preview \
    redhat.fabric8-analytics \
    redhat.java \
    redhat.vscode-commons \
    redhat.vscode-yaml \
    rvest.vs-code-prettier-eslint \
    silvenon.mdx \
    sonarsource.sonarlint-vscode \
    tamasfe.even-better-toml \
    techer.open-in-browser \
    threadheap.serverless-ide-vscode \
    timonwong.shellcheck \
    tushortz.python-extended-snippets \
    visualstudioexptteam.intellicode-api-usage-examples \
    VisualStudioExptTeam.vscodeintellicode \
    vsciot-vscode.vscode-arduino \
    vscjava.vscode-java-debug \
    vscjava.vscode-java-dependency \
    vscjava.vscode-java-pack \
    vscjava.vscode-java-test \
    vscjava.vscode-maven \
    vscode-aws-console.vscode-aws-console \
    wekex.jsonlint \
    wholroyd.jinja \
    wx-chevalier.google-java-format \
    yzhang.markdown-all-in-one \
    zaaack.markdown-editor
do
    code --install-extension $extension
done
