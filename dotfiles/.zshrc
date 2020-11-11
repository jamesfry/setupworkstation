export CLICOLOR=YES

export ZPLUG_HOME=/usr/local/opt/zplug
source ${ZPLUG_HOME}/init.zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "zsh-users/zsh-autosuggestions"
zplug "lukechilds/zsh-nvm"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug load

if ! zplug check --verbose; then
    echo
    zplug install
fi

jdk() {
    version=$1
    export JAVA_HOME=$(/usr/libexec/java_home -v"$version")
}

jdk 1.8

export NVM_AUTO_USE=true
export NVM_COMPLETION=true

gonvm() {
    version=$1
    nvm_date_file=${NVM_DIR}/.zshrc_nvm_last_installed_${version}
    now=$(date +%s)
    last_updated=$(stat -f %m ${nvm_date_file} 2>/dev/null || echo 0)
    if [ "$(($now - $last_updated))" -gt "$((60 * 60 * 24))" ]; then
        nvm install --latest-npm ${version}
        touch ${nvm_date_file}
    fi
}

# install / update latest and lts release of node daily, use lts by default
gonvm node
gonvm --lts
nvm use --lts

# allow comments in interactive shells (like Bash does)
setopt INTERACTIVE_COMMENTS

# History
HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt hist_ignore_space
setopt histignoredups
