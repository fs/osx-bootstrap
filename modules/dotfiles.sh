info_echo "Installing bash dotfiles to ~/.dotfiles"

if [ ! -d ~/.dotfiles ]; then
  git clone https://github.com/nicck/dotfiles.git ~/.dotfiles
  (
    cd ~/.dotfiles
    sh script/bootstrap
  )
fi
