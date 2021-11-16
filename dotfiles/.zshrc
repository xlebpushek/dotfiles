### Zsh settings

## Aliases
source "$HOME/.config/shell/aliases"

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
