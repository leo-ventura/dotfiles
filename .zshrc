# Defining UTF-8 language support at the top of the file
LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="custom"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

plugins=(
  git
)

# exporting editor
export EDITOR="vim"

# Sourcing oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Sourcing aliases
source $HOME/.config/zshrc.d/alias.zsh

# Sourcing zstyle
source $HOME/.config/zshrc.d/zstyle.zsh

# Sourcing syntax highlighting
source $HOME/.config/zshrc.d/syntax-highlighting.zsh

# Binding ctrl+backspace to delete last word
bindkey '^H' backward-kill-word
