#!/usr/bin/env bash

set -e

if [ ! -d ~/.osx-bootstrap ]
then
  git clone -b master https://github.com/fs/osx-bootstrap.git ~/.osx-bootstrap
fi

echo "Ask for the administrator password upfront"
sudo -v
# Keep-alive: update existing `sudo` time stamp until `go` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

cd ~/.osx-bootstrap

modules=(functions workplace dotfiles osx_version osx_update cmd_tools ssh brew cask ruby powcx osx_defaults sublime_bootstrap)

for module in "${modules[@]}"
do
  source modules/$module.sh
done

echo 'You also can run use additional settings form ~/.osx-bootstrap/modules/'
echo '  * osx_keyboard - enable F1, F2, etc; map CAPS LOCK to Ctrl'
echo '  * fonts        - install "Inconsolata LGC" font, update Sublime Text config'

cd -

source ~/.profile
