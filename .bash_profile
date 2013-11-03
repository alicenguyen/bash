# aliases
alias ls='ls -aG'
alias cd..='cd ..'
alias vimrcs="~/.vim_runtime/vimrcs"

# aliases - file shortcuts
alias psych="cd ~/Dropbox/school/fall13/psych105"
alias 101="cd ~/Dropbox/school/fall13/cse101"
alias gb="cd ~/Projects/GradeBaker"
alias libnum="echo 21822054334380"

STARTCOLOR_GREEN="\[\e[0;32m\]";
STARTCOLOR_DARKRED="\[\e[1;31m\]";
STARTCOLOR_YELLOW="\[\e[0;33m\]";
ENDCOLOR="\[\e[0m\]"
export PS1="$STARTCOLOR_DARKRED\h: $ENDCOLOR$STARTCOLOR_GREEN\\w> $STARTCOLOR_YELLOW$ $ENDCOLOR"
