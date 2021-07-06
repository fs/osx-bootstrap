#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$self")/.." && pwd -P)" 
source "$osx_bootstrap/modules/functions.bash"

if [ -f ~/.bashrc ] && [ -f ~/.zshrc ]
then
  chmod 746 ~/.zshrc 
  chmod 746 ~/.bashrc
  echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.bashrc
  echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
else 
  cp /etc/bashrc ~/.bashrc
  cp /etc/zshrc ~/.zshrc
  chmod 746 ~/.zshrc 
  chmod 746 ~/.bashrc
  echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.bashrc
  echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
fi 

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

brew cleanup
