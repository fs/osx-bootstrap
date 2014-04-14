if test ! $(which brew); then
  info_echo "Install Homebrew, a good OS X package manager"
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
else
  info_echo "Update Homebrew"
  brew update
fi

info_echo "Install Git"
brew install git

info_echo "Install FS tool"
brew tap fs/fstool
brew install fs-tool

info_echo "Install Postgres, a good open source relational database"
brew install postgres --no-python

info_echo "Install Redis, a good key-value database"
brew install redis

info_echo "Install ImageMagick, for cropping and re-sizing images"
brew install imagemagick

info_echo "Install QT, used by Capybara Webkit for headless Javascript integration testing"
brew install qt

info_echo "Install watch, used to execute a program periodically and show the output"
brew install watch

info_echo "Install z (autojump alternative), for a faster way to navigate your filesystem"
brew install z

info_echo "Install ssh-copy-id to deliver your public key in a remote machine's authorized_keys"
brew install ssh-copy-id

info_echo "Install Heroku CLI client"
brew install heroku-toolbelt

info_echo "Remove outdated versions from the cellar"
brew cleanup
