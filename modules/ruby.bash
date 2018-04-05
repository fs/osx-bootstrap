#!/usr/bin/env bash

RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix)/opt/openssl"
export RUBY_CONFIGURE_OPTS

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Enable rbenv alias"
eval "$(rbenv init -)"

info_echo "Set default gems list"
echo "bundler" >> "$(brew --prefix rbenv)/default-gems"

info_echo "Installing latest stable Ruby..."
ruby_version="$(rbenv install -l | grep -E "^\\s*([.0-9]+)$" | tail -1)"

if test -z "$(rbenv versions --bare|grep $ruby_version)"; then
  info_echo "Install Ruby $ruby_version"
  rbenv install $ruby_version
fi

info_echo "Set Ruby $ruby_version as global default Ruby"
rbenv global $ruby_version
rbenv shell $ruby_version

info_echo "Update to latest Rubygems version"
yes | gem update --system --no-document
