#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

brew_install_or_upgrade "rbenv"

info_echo "Enable shims and autocompletion"
eval "$(rbenv init -)"

brew_install_or_upgrade "ruby-build"
brew_install_or_upgrade "rbenv-gem-rehash"

brew_install_or_upgrade "rbenv-default-gems"
echo "bundler" > "$(brew --prefix rbenv)/default-gems"

if test -z "$(rbenv versions --bare|grep "2.2.1")"; then
  info_echo "Install Ruby 2.2.1"
  rbenv install 2.2.1
fi

info_echo "Set Ruby 2.2.1 as global default Ruby"
rbenv global 2.2.1
rbenv shell 2.2.1

info_echo "Update to latest Rubygems version"
gem update --system

info_echo "Installing Bundler to install project-specific Ruby gems"
gem install bundler --no-document
