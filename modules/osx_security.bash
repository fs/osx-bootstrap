#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Run osxlockdown"
sudo vendor/osxlockdown/osxlockdown -remediate -commands_file vendor/osxlockdown/commands.yaml

info_echo "Expose hidden files and Library folder in Finder"
defaults write com.apple.finder AppleShowAllFiles -bool true
chflags nohidden ~/Library

info_echo "Empty Trash securely by default"
defaults write com.apple.finder EmptyTrashSecurely -bool true
