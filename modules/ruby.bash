#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Enable rbenv alias"
eval "$(rbenv init -)"

info_echo "Set default gems list"
echo "bundler" >> "$(brew --prefix rbenv)/default-gems"
echo "tmuxinator" >> "$(brew --prefix rbenv)/default-gems"

ruby_version="2.3.1"

if test -z "$(rbenv versions --bare|grep $ruby_version)"; then
  info_echo "Install Ruby $ruby_version"
  rbenv install $ruby_version
fi

info_echo "Set Ruby $ruby_version as global default Ruby"
rbenv global $ruby_version
rbenv shell $ruby_version

info_echo "Update to latest Rubygems version"
gem update --system --no-document

info_echo "Installing Bundler to install project-specific Ruby gems"
gem install bundler --no-document
