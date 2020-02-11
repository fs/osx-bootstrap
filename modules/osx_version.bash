#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

required_osx_version="10.15.3"
osx_version=$(/usr/bin/sw_vers -productVersion)

info_echo "Checking OS X version"
if [ "$(version "$osx_version")" -lt "$(version "$required_osx_version")" ]; then
  error_echo "Your OS X $osx_version version is older then required $required_osx_version version. Exiting"
  exit
fi
