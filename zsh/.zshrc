# This file stores the configuration of my ZSH shell. 
#
# More information at: github.com/pblcc/dotfiles
#
# Follow me on twitter (@pablocorbcon) for more.

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="evan"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls -la"
alias c="clear"
alias t="tree"
alias v="vim"
alias p="python3"
alias s="sudo"
alias please="sudo su"

screenfetch
