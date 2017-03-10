#!/bin/bash
#
# git-prompt.sh

RESET="\[\033[0m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"

parse_git_branch() {
  git symbolic-ref --short HEAD 2> /dev/null
}

parse_git_state() {
  if [[ ! -z $(git status --short) ]]; then
    echo " *"
  fi
}

export PS1="\n$GREEN\u@\h $PURPLE\w $CYAN($(parse_git_branch)$RED$(parse_git_state)$CYAN)\n$RED\$$RESET "
