#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

brew_install_or_upgrade "node"

info_echo "Install Grunt-CLI"
npm install --global grunt-cli

info_echo "Install Bower"
npm install --global bower

info_echo "Install Coffeelint"
npm install --global coffeelint
