#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Running OS X Software updates"

# get first line from updates list
softupdmsg="$(sudo softwareupdate -l 2>&1 | head -1)"

if [ "$softupdmsg" == "No new software available." ] ; then
  info_echo "No new software available."
else
  info_echo "Please, update software from App Store"
fi
