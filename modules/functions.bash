red=$(tput setaf 1)
green=$(tput setaf 2)
color_reset=$(tput sgr0)

error_echo() {
  printf "\n${red}%s.${color_reset}\n" "$1"
}

info_echo() {
  printf "\n${green}%s ...${color_reset}\n" "$1"
}

version() {
  echo "$@" | awk -F. '{ printf("%d%03d%03d%03d\n", $1,$2,$3,$4); }'
}

brew_install_or_upgrade() {
  if brew_is_installed "$1"; then
    if brew_is_upgradable "$1"; then
      info_echo "Upgrading $1"
      brew upgrade "$@"
    else
      info_echo "Already using the latest version of $1. Skipping"
    fi
  else
    info_echo "Installing $1"
    brew install "$@"
  fi
}

brew_is_installed() {
  # shellcheck disable=SC2155
  local name="$(brew_expand_alias "$1")"

  brew list -1 | grep -Fqx "$name"
}

brew_is_upgradable() {
  # shellcheck disable=SC2155
  local name="$(brew_expand_alias "$1")"

  ! brew outdated --quiet "$name" >/dev/null
}

brew_tap() {
  brew tap "$1" 2> /dev/null
}

brew_expand_alias() {
  brew info "$1" 2>/dev/null | head -1 | awk '{gsub(/:/, ""); print $1}'
}

brew_cask_install() {
  if brew_cask_is_installed "$1"; then
    info_echo "A Cask for $1 is already installed. Skipping"
  else
    info_echo "Installing $1"
    brew cask install "$@"
  fi
}

brew_cask_is_installed() {
  brew cask list -1 | grep -Fqx "$1"
}

brew_launchctl_restart() {
  # shellcheck disable=SC2155
  local name="$(brew_expand_alias "$1")"
  local domain="homebrew.mxcl.$name"
  local plist="$domain.plist"

  info_echo "Restarting $1"
  mkdir -p "$HOME/Library/LaunchAgents"
  ln -sfv "/usr/local/opt/$name/$plist" "$HOME/Library/LaunchAgents"

  if launchctl list | grep -Fq "$domain"; then
    launchctl unload "$HOME/Library/LaunchAgents/$plist" >/dev/null
  fi
  launchctl load "$HOME/Library/LaunchAgents/$plist" >/dev/null
}

catch_exit() {
  ret=$?
  test $ret -ne 0 && error_echo "\n\nInstallation fails" >&2
  exit $ret
}

# Catch exit
trap catch_exit EXIT
