red=$(tput setaf 1)
green=$(tput setaf 2)
color_reset=$(tput sgr0)

error_echo() {
  echo "\n${red}$1.${color_reset}\n"
}

info_echo() {
  echo "\n${green}$1 ...${color_reset}\n"
}

version() {
  echo "$@" | awk -F. '{ printf("%d%03d%03d%03d\n", $1,$2,$3,$4); }'
}

catch_exit() {
  ret=$?
  test $ret -ne 0 && error_echo "\n\nInstallation fails" >&2
  exit $ret
}

cask_install() {
  brew cask install --appdir=~/Applications "$1"
}


# Catch exit
trap catch_exit EXIT

info_echo "Ask for the administrator password upfront"
  sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
