if ! test -e ~/src ; then
  info_echo "Setup workplace at ~/src (also linked from ~/Develop and ~/Projects"
  mkdir ~/src
  ln -s ~/Develop ~/src
  ln -s ~/Projects ~/src
fi
