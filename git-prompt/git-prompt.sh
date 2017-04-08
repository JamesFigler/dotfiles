#!/bin/bash
#
# git-prompt.sh

RESET="\[\033[0m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"

# Fedora/RHEL location
if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
  . /usr/share/git-core/contrib/completion/git-prompt.sh

# Mac location
elif [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="$RESET\n\A $GREEN\u@\h $PURPLE\w $CYAN\$(__git_ps1 '(%s)')\n$RED\$$RESET "
