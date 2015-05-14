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

brew_tap "fs/fstool"
brew_install_or_upgrade "fs-tool"
brew_install_or_upgrade "git"
brew_install_or_upgrade "postgres"
brew_launchctl_restart "postgresql"
brew_install_or_upgrade "redis"
brew_install_or_upgrade "imagemagick"
brew_install_or_upgrade "qt"
brew_install_or_upgrade "watch"
brew_install_or_upgrade "z"
brew_install_or_upgrade "ssh-copy-id"
brew_install_or_upgrade "heroku-toolbelt"
brew_install_or_upgrade "tmux"

info_echo "Remove outdated versions from the cellar"
brew cleanup
