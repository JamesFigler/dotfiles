#!/bin/bash
#
# git-prompt.sh

RESET="\[\033[0m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="\n$GREEN\u@\h $PURPLE\w $CYAN\$(__git_ps1 '(%s)')\n$RED\$$RESET "
