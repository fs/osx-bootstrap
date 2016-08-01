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

if test -z "$(nvm ls|grep "node")"; then
  info_echo "Install latest Node.js version"
  nvm install node
fi

info_echo "Set latest Node.js version as global default Node"
nvm use node
nvm alias default node

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

info_echo "Install PhantomJS"
npm install phantomjs-prebuilt
