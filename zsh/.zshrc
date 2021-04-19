# configuration routes
PLUGINS_FILE=~/plugins.zsh
ALIAS_FILE=~/alias.zsh
FUNCTIONS_FILE=~/.functions

# this file contains all the configuration of ZSH, my default terminal shell.
# the configuration has been modulariced into different files, (that actually
# are specified above). The files are:
#   - alias: for storing the aliases of zsh
#   - plugins: for storing the plugins of zsh
#   - functions: contains all the functions (cb)
# for more information check out: github.com/pablocorbalann/dotfiles/tree/main/zsh
# by Pablo Corbalán @pablocorbalann

# Export oh my zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="evan"

# Plugins
source ~/plugins.zsh
# Source OH MY ZSH
source $ZSH/oh-my-zsh.sh
# Alias
source ~/alias.zsh
# Functions
source ~/.functions

layout es
neofetch
