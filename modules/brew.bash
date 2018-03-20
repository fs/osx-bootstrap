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

# https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit#macos-high-sierra-1013-macos-sierra-1012-el-capitan-1011-and-yosemite-1010
brew link --force qt@5.5

# https://github.com/eventmachine/eventmachine/issues/602#issuecomment-152184551
info_echo "Link keg-only openssl to /usr/local to let software outside of Homebrew to find it"
brew unlink openssl && brew link openssl --force

info_echo "Link Curl with openssl"
brew link --force curl

info_echo "Link readline to correctly build Ruby later"
brew link --force readline

info_echo "Remove outdated versions from the cellar"
brew cleanup
