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

if test -z "$(nvm ls|grep "5.1.1")"; then
  info_echo "Install Node.js 5.1.1"
  nvm install 5.1.1
fi

info_echo "Set Node.js 5.1.1 as global default Node"
nvm use 5.1.1
nvm alias default 5.1.1

export npm_config_global=true
export npm_config_loglevel=silent

info_echo "Install Gulp"
npm install gulp

info_echo "Install Grunt-CLI"
npm install grunt-cli

info_echo "Install Bower"
npm install bower

info_echo "Install Npm-Check-Updates"
npm install npm-check-updates
