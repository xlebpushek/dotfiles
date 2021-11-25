#! /bin/sh


### oh-my-posh settings

## Promt
# Crumbs (custom theme)
eval "$(oh-my-posh --init --shell zsh --config "$HOME/.config/shell/promt/crumbs/theme.omp.json")"


### Zsh settings

## Aliases
# Basic
source "$HOME/.config/shell/aliases/basic"

## History
# Set history size
export HISTSIZE=10000
# Save history after logout
export SAVEHIST=10000
# Create a history file
if [ ! -f "$HOME/.local/share/shell/history" ]
then
    mkdir -p "$HOME/.local/share/shell"
    touch "$HOME/.local/share/shell/history"
fi
# History file
export HISTFILE="$HOME/.local/share/shell/history"