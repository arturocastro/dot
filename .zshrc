source "${HOME}/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen load zsh-users/zsh-history-substring-search
    zgen load oz/safe-paste
    zgen load arturocastro/zsh-pure

    # prezto and modules
    zgen save
fi

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

##############
# Completion
##############
setopt auto_menu
setopt magic_equal_subst
zmodload -i zsh/complist

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' list-colors ''

autoload -U colors && colors

# Use caching to make completion for commands such as dpkg and apt usable.
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ".zcompcache"

###############
# cd and pushd
###############
setopt AUTO_PUSHD

###########
# History
###########
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_ignore_space
setopt hist_ignore_all_dups

#############
# Misc
#############
bindkey -e

autoload -Uz compinit prompinit
compinit

export DISPLAY=:0.0
export EDITOR=mg

[ -f ${HOME}/.travis/travis.sh ] && source ${HOME}/.travis/travis.sh
export MC_SKIN=${HOME}/.mc/lib/mc-solarized-skin/solarized.ini
