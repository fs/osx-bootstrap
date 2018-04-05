# Make sure you have following env variables
# when using this Brewfile or use it with modules/brew.bash
#
#  HOMEBREW_CASK_OPTS="--appdir=/Applications"
#  RBENV_ROOT=/usr/local/var/rbenv
#  NVM_DIR=/usr/local/var/nvm

# Essential terminal utilities
tap "homebrew/services"
brew "readline", link: true
brew "git"
brew "postgresql"
brew "redis"
brew "imagemagick"
# https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit#macos-high-sierra-1013-macos-sierra-1012-el-capitan-1011-and-yosemite-1010
brew "qt@5.5", link: true
brew "watch"
brew "z"
brew "ssh-copy-id"
brew "heroku-toolbelt"
brew "tmux"
brew "openssl"
brew "curl", args: ["with-openssl"]

# Essential Mac applications
tap "caskroom/cask"
tap "caskroom/versions"

cask "java"
cask "skype"
cask "iterm2"
cask "the-unarchiver"
cask "google-chrome"
cask "sublime-text"
cask "slack"
cask "spectacle"

# Node version manager
brew "nvm"

# Ruby
brew "rbenv"
brew "ruby-build"
brew "rbenv-default-gems"
