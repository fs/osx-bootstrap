info_echo "Installing bash dotfiles to ~/.dotfiles"

if [ ! -d ~/.dotfiles ]; then
  git clone https://github.com/nicck/dotfiles.git ~/.dotfiles
  cd ~/.dotfiles
  sh script/bootstrap
  cd -
fi

info_echo "Installing zsh dotfiles to ~/.dotfiles-zsh"

if [ ! -d ~/.dotfiles-zsh ]; then
  mkdir ~/.dotfiles-zsh
  git clone --recurse-submodules https://github.com/fs/dotfiles.git ~/.dotfiles-zsh
  cd ~/.dotfiles-zsh
  sh install.sh
fi

cd ~/.osx-bootstrap
