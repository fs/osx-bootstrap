#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

brew_tap "caskroom/cask"
brew_tap "caskroom/versions"
brew_install_or_upgrade "brew-cask"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew_cask_install "java"
brew_cask_install "iterm2"
brew_cask_install "the-unarchiver"
brew_cask_install "hipchat"
brew_cask_install "google-chrome"
brew_cask_install "firefox"
brew_cask_install "dropbox"
brew_cask_install "sublime-text3"
brew_cask_install "spectacle"
brew_cask_install "dash"
