#!/bin/sh

if [ ! -d ~/Library/Fonts/Liberation-Mono ]
then
  # download
  curl --output ~/Downloads/Liberation-Mono.zip --progress-bar \
    "http://www.fontsquirrel.com/fonts/download/Liberation-Mono"

  # extract
  unzip -q ~/Downloads/Liberation-Mono.zip \
    -d ~/Library/Fonts/Liberation-Mono
fi

if [ ! -d ~/Library/Fonts/Inconsolata-LGC ]
then
  # download
  curl --output ~/Downloads/Inconsolata-LGC.zip --progress-bar \
    "http://we.easyelectronics.ru/attachments/get/997"

  # extract
  unzip -q ~/Downloads/Inconsolata-LGC.zip \
    -x *.ttf *.sfd *.txt \
    -d ~/Library/Fonts

  # cleanup
  rm ~/Library/Fonts/*Inconsolata*/README
  rm ~/Library/Fonts/*Inconsolata*/*.zip

  mv ~/Library/Fonts/*Inconsolata* ~/Library/Fonts/Inconsolata-LGC
fi

# update Sublime Text 2/3 configs :: use Inconsolata LGC instead Menlo
update_sublime_preferences() {
  local sublime_preferences=$1

  if [[ -f $sublime_preferences ]]
  then
    sed -e "s/Menlo/Inconsolata LGC/g" \
        -e "s/line_padding_bottom\"\:\ 2/line_padding_bottom\"\:\ -2/g" \
        -e "s/line_padding_top\"\:\ 1/line_padding_top\"\:\ -1/g" \
        -e "s/font_size\"\:\ 15/font_size\"\:\ 17/g" \
        "$sublime_preferences" > "$sublime_preferences-new"

    mv -f "$sublime_preferences-new" "$sublime_preferences"
  fi
}

update_sublime_preferences "/Users/$(whoami)/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings"
update_sublime_preferences "/Users/$(whoami)/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
