#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Enable NVM alias"
# we need disable -e during sourcing nvm.sh b/c of
# https://github.com/creationix/nvm/issues/721
# https://github.com/travis-ci/travis-ci/issues/3854#issuecomment-99492695
set +e
source "$(brew --prefix nvm)/nvm.sh"
set -e

if test -z "$(nvm ls|grep "0.12.2")"; then
  info_echo "Install Node.js 0.12.2"
  nvm install 0.12.2
fi

info_echo "Set Node.js 0.12.2 as global default Node"
nvm use 0.12.2
nvm alias default 0.12.2

info_echo "Install Gulp"
npm install --global gulp

info_echo "Install Grunt-CLI"
npm install --global grunt-cli

info_echo "Install Bower"
npm install --global bower

info_echo "Install CoffeeScript"
npm install --global coffee-script

info_echo "Install CoffeeLint"
npm install --global coffeelint
