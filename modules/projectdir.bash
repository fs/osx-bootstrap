#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

if ! test -e ~/src ; then
  info_echo "Setup project directory at ~/src (also linked from ~/Develop and ~/Projects"
  mkdir ~/src
  ln -s ~/src ~/Develop
  ln -s ~/src ~/Projects
fi
