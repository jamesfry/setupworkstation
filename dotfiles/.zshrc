export NVM_AUTO_USE=true
export NVM_COMPLETION=true
export ZPLUG_HOME=/usr/local/opt/zplug
source ${ZPLUG_HOME}/init.zsh
# zplug clean --force
# zplug clear
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "zsh-users/zsh-autosuggestions"
zplug "lukechilds/zsh-nvm"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug load
if ! zplug check --verbose; then
    echo; zplug install
fi
jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
}
jdk 1.8
#allow comments in interactive shells (like Bash does)
setopt INTERACTIVE_COMMENTS
export CLICOLOR=YES # MacOS
HISTFILE=~/.history



HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt hist_ignore_space
setopt histignoredups
