#! /bin/bash

# Fresh system setup for debian and osx.

# Platfrom check

# langs: golang,rust,nodejs,python3
# brew
# zsh & oh-my-zsh
# docker
# vscode & all addons
# iterm + smyck theme
# tmux
# build-essenitals on debian
# kubectl
# 
function osx () {
  # check for brew
  if ! [ -x "$(command -v brew)" ]; then
    echo "Installing brew ..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  # installing things from brew
  brew_installs=(
    'zsh',
    'docker',
    'tmux',
    'kubectl',
  )
  
  # sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

if [[ $(uname -s) -eq "Darwin" ]]; then
  osx
fi

