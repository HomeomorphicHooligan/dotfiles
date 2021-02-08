# This file stores the configuration of my ZSH shell. 
#
# More information at: github.com/pblcc/dotfiles
#
# Follow me on twitter (@pablocorbcon) for more.

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="evan"

# Plugins of ZSH
plugins=(
  git
  git-auto-fetch
  history
  sudo
  pip
  extract
  catimg
  python
  zsh-autosuggestions
  zsh-syntax-highlighting
  alias-finder
)

# Plugins configuration
GIT_AUTO_FETCH_INTERVAL=1200

# Source OH MY ZSH
source $ZSH/oh-my-zsh.sh

# Alias
alias zshconfig="source ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls -la"
alias c="clear"
alias t="tree"
alias v="vim"
alias p="python3"
alias s="sudo"
alias please="sudo su"
alias pls="sudo su"
# "work alias"
alias project="cd ~/project && tree"
alias new-project="rm -rf ~/project && mkdir ~/project && cd ~/project"
alias clean-project="cd ~/project && rm -rf *"
alias remove-project="rm -rf ~/project"

# Run  programs
screenfetch
