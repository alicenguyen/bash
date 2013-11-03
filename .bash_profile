#aliases
alias ls='ls -aG'
alias cd..='cd ..'
alias vimrcs="~/.vim_runtime/vimrcs"

STARTCOLOR_GREEN="\[\e[0;32m\]";
STARTCOLOR_DARKRED="\[\e[1;31m\]";
STARTCOLOR_YELLOW="\[\e[0;33m\]";
ENDCOLOR="\[\e[0m\]"
export PS1="$STARTCOLOR_DARKRED\h: $ENDCOLOR$STARTCOLOR_GREEN\\w> $STARTCOLOR_YELLOW$ $ENDCOLOR"
