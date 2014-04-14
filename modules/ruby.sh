if test ! $(which rbenv); then
  info_echo "Install rbenv for changing Ruby versions"
  brew install rbenv
fi

info_echo "Enable shims and autocompletion"
eval "$(rbenv init -)"

info_echo "Install rbenv-gem-rehash so the shell automatically picks up binaries after installing gems with binaries"
brew install rbenv-gem-rehash

info_echo "Install ruby-build for installing Rubies"
brew install ruby-build

info_echo "Install GNU Compiler Collection, a necessary prerequisite to installing Ruby"
brew tap homebrew/dupes
brew install apple-gcc42

export CC=gcc-4.2

if test -z $(rbenv versions --bare|grep "1.9.3-p545"); then
  info_echo "Install Ruby 1.9.3-p545"
  rbenv install 1.9.3-p545
fi

if test -z $(rbenv versions --bare|grep "2.1.1"); then
  info_echo "Install Ruby 2.1.1"
  rbenv install 2.1.1
fi

info_echo "Set Ruby 2.1.1 as global default Ruby"
rbenv global 2.1.1
rbenv shell 2.1.1

info_echo "Update to latest Rubygems version"
gem update --system

info_echo "Installing Bundler to install project-specific Ruby gems"
gem install bundler --no-document

info_echo "Installing Rails"
gem install rails --no-document
