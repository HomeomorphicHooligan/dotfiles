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
alias ohmyzshconfig="source ~/.oh-my-zsh"
alias functionsconfig="source ~/.functions"
alias l="ls -la"
alias c="clear"
alias t="tree"
alias v="vim"
alias p="python3.9"
alias bp="bpython3"
alias s="sudo"
alias please="sudo su"
alias pls="sudo su"
alias vv="echo 'w'"
alias r="rm -rf"
alias django-start="python3.9 manage.py runserver"
# "work alias"
alias project="cd ~/project && tree"
alias new-project="rm -rf ~/project && mkdir ~/project && cd ~/project"
alias clean-project="cd ~/project && rm -rf *"
alias remove-project="cd .. && rm -rf ~/project"
alias copy='xclip -sel c < '
alias olive='cd ~/yt && chmod +x olive.AppImage && ./olive'
alias sa="sudo apt"
alias sag="sudo apt get"
alias sai='sudo apt install'
alias sagi='sudo apt-get install'
alias sagu="sudo apt-get update"
alias proton='protonvpn-cli'
alias proton-dsw='protonvpn-cli ks --off'
alias proton-esw='protonvpn-cli ks --always-on'

source ~/.functions
alias bwl='bitwarden list items'
alias bws='chmod +x ~/.bw/bw.AppImage && cd ~/.bw/ && ./bw.AppImage'
alias dotfiles=cd ~/github/dotfiles=''
alias i='sudo dpkg -i'
alias b='bash'
alias wifi='nmcli dev wifi'
alias mvgh='cd ~/github'
