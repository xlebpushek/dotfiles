#! /bin/sh


### oh-my-zsh settings

## Specifying the path to the main folder
export ZSH="$HOME/.config/shell/oh-my-zsh"

## Custom theme for promt
ZSH_THEME="crumb"

## Plugins
plugins=(
    git
    sudo
    npm
    composer
    zsh-syntax-highlighting
    zsh-autosuggestions
)

## Specifying the path to the main file
source "$ZSH/oh-my-zsh.sh"


### Zsh settings

## Aliases
# Basic
source "${HOME}/.config/shell/aliases/basic"

## History
# The size of the history in the stream
export HISTSIZE=1000
# The size of the saved history after exiting
export SAVEHIST=100
# Create a history file if it doesn't exist
if [ ! -f "${HOME}/.local/share/shell/history" ]
then
    mkdir -p "${HOME}/.local/share/shell"
    touch "${HOME}/.local/share/shell/history"
fi
# Specifying the path to the history file
export HISTFILE="${HOME}/.local/share/shell/history"