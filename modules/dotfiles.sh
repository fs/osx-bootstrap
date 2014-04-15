info_echo "Installing bash dotfiles to ~/.dotfiles"

git clone https://github.com/nicck/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sh script/bootstrap

info_echo "Installing zsh dotfiles to ~/.dotfiles-zsh"

mkdir ~/.dotfiles-zsh
git clone --recurse-submodules https://github.com/fs/dotfiles.git ~/.dotfiles-zsh
cd ~/.dotfiles-zsh
sh install.sh
