#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

if test ! "$(which brew)"; then
  info_echo "Install Homebrew, a good OS X package manager"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  info_echo "Update Homebrew"
  brew update
fi

info_echo "Install Brew formalue"
brew tap "Homebrew/bundle" 2> /dev/null
brew bundle --file="$osx_bootstrap/Brewfile"

info_echo "Remove outdated versions from the cellar"
brew cleanup
