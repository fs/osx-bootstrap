#!/usr/bin/env bash

set -e

if [ ! -d ~/.osx-bootstrap ]
then
  git clone https://github.com/fs/osx-bootstrap.git ~/.osx-bootstrap
fi

cd ~/.osx-bootstrap

modules=(functions osx_version osx_update cmd_tools ssh brew cask ruby workplace dotfiles osx_defaults)

for module in "${modules[@]}"
do
  source modules/$module.sh
done

cd -
