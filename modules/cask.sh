info_echo "Install a friendly homebrew-style CLI workflow for the administration of Mac applications distributed as binaries"
brew tap phinze/cask
brew tap caskroom/versions
brew install brew-cask

info_echo "Install iTerm2"
cask_install iterm2

info_echo "Install Alfred"
cask_install alfred
brew cask alfred link

info_echo "Install The Unarchiver"
cask_install the-unarchiver

info_echo "Install HipChat"
cask_install hipchat

info_echo "Install Skype"
cask_install skype

info_echo "Install Google Chrome"
cask_install google-chrome

info_echo "Install Firefox"
cask_install firefox

info_echo "Install Balsamiq Mockups"
cask_install balsamiq-mockups

info_echo "Install Bittorrent Sync"
cask_install bittorrent-sync

info_echo "Install Google Drive"
cask_install google-drive

info_echo "Install Dropbox"
cask_install dropbox

info_echo "Install flux"
cask_install flux

info_echo "Install middleclick"
cask_install middleclick

info_echo "Install Sublime Text 3"
cask_install sublime-text3

info_echo "Install Java"
cask_install java
