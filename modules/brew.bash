#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"
export PATH="/opt/homebrew/bin:$PATH"

if test ! "$(command -v brew)"; then
  info_echo "Install Homebrew, a good OS X package manager"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  info_echo "Update Homebrew"
  brew update
fi

info_echo "Install Brew formalue"

brew tap "Homebrew/bundle" 2> /dev/null
brew bundle install --file="$osx_bootstrap/Brewfile"

info_echo "Remove outdated versions from the cellar"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /$HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew cleanup