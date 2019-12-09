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

if test -n "$(nvm ls|grep "node"|grep "N/A")"; then
  info_echo "Install latest Node.js version"
  nvm install node
fi

info_echo "Set latest Node.js version as global default Node"
nvm use node
nvm alias default node
