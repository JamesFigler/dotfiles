#!/bin/bash
#
# git-prompt.sh

RESET="\[\033[0m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"

parse_git_state() {
  if [[ $(git status --short) ]]; then
    echo " *"
  fi
}

parse_git_branch() {
  if [[ -d "$(pwd)/.git" ]]; then
    echo "($(git symbolic-ref --short HEAD 2> /dev/null)$(parse_git_state))"
  fi
}

export PS1="\n$GREEN\u@\h $PURPLE\w $CYAN\$(parse_git_branch)\n$RED\$$RESET "
