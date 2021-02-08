# TANGO ZSH THEME
# ---------------
# This is the Tango Zsh theme, a minimal theme for the
# Zsh theme that includes things as:
#
# - Zsh username
# - Directory (complete structure)
# - Information of errors (green / red)
# - Information about Git
# - A clock
#
# The prompt looks like:
#
#   @username ~/folder/subfolder 
#   ↳ λ                                         Name at branch [hour:min:sec]
#
# ALl the prompt is white. 
# The '@username' is bold.
# The lambda symbol is also bold.
# It's green if everything is ok, and red if there is an error in a command.

username() {
  echo "%B@%n%b"
}

directory() {
  echo "%0~"
}

ZSH_THEME_GIT_PROMPT_PREFIX="at "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(username) $(directory)
↳ %B%(?.%{$fg[green]%}λ%f.%{$fg[red]%}λ%f)%b '

RPROMPT='$(git_current_user_name) $(git_prompt_info) [%*]'