#!/bin/bash
#
# alias.sh

alias ls="ls --color=auto"
alias ll="ls -al --color=auto"

git config --global alias.hist "log --pretty=format:'%C(auto)%h %Cblue%cn %Cgreen(%cr) %C(reset)%s'"
