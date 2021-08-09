#!/usr/bin/env bash

set -e

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

if ! command -v rbenv &> /dev/null
then
  echo 'Installing rbenv'
  # shellcheck disable=SC2016
  [ -f "$HOME/.zshrc" ] && echo 'eval "$(rbenv init -)"' >> ~/.zshrc
  brew install rbenv
  eval "$(rbenv init -)"
  /bin/bash -c "curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash"
else
  echo "Rbenv already installed"
fi
