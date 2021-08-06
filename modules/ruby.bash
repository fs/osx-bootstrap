#!/usr/bin/env bash

set -e

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"
  
if ! command -v rbenv &> /dev/null ]
then
  echo 'Installing rbenv'
  [ -f "$HOME/.zprofile" ] && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  [ -f "$HOME/.zshrc" ] && echo 'eval "$(rbenv init -)"' >> ~/.zshrc
  brew install rbenv
  brew upgrade rbenv ruby-build
  eval "$(rbenv init -)"
  /bin/bash -c "curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash"
else
  echo "Rbenv already installed"
fi
