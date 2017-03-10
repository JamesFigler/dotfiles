#!/bin/bash
#
# install.sh

if [[ -z $(cat ~/.bashrc | grep ". ~/dotfiles/bashrc.sh") ]]; then
  echo 'if [[ -f ~/dotfiles/bashrc.sh ]]; then . ~/dotfiles/bashrc.sh; fi' >> ~/.bashrc
fi
