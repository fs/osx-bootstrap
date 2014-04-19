if ! test -e ~/src ; then
  info_echo "Setup workplace at ~/src (also linked from ~/Develop and ~/Projects"
  mkdir ~/src
  ln -s ~/src ~/Develop
  ln -s ~/src ~/Projects
fi
