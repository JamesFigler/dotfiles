#!/bin/bash
#
# alias.sh

# Linux specific aliases
if [[ $(uname) == "Linux" ]]; then
  alias ls="ls --color=auto"
  alias ll="ls -lh --color=auto"
  alias la="ls -Alh --color=auto"

# Mac/BSD specific aliases
elif [[ $(uname) == "Darwin" ]]; then
  alias ls="ls -G"
  alias ll="ls -lhG"
  alias la="ls -AlhG"
fi


alias gco="git checkout"
alias ga="git add"
alias gc="git commit"
alias gl="git log --pretty=format:'%C(auto)%h%C(reset) - %s %Cblue<%cn>'"
alias gs="git status"
