#!/usr/bin/env bash

set -e

modules=(functions osx_version osx_update cmd_tools ssh brew cask ruby workplace dotfiles osx_defaults)

for module in "${modules[@]}"; do
  source modules/$module.sh
done
