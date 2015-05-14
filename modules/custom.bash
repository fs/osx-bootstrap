#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

if [ -f "$HOME/.osx-bootstrap-custom" ]; then
  source "$HOME/.osx-bootstrap-custom"
fi
