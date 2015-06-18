#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Bootstrap Sublime Text 3"
curl -fsSL https://raw.github.com/fs/sublime-bootstrap/master/bootstrap-osx.sh | sh
