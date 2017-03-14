#!/bin/sh
#
# bashrc.sh

if [ -f ~/dotfiles/git-prompt/git-prompt.sh ]; then
  . ~/dotfiles/git-prompt/git-prompt.sh
fi

if [ -f ~/dotfiles/aliases/aliases.sh ]; then
  . ~/dotfiles/aliases/aliases.sh
fi
