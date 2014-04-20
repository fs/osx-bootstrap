if test ! $(which node); then
  info_echo "Install node.js"
  brew install node
else
  info_echo "Update node.js"
  brew upgrade node
fi

info_echo "Install Grunt-CLI"
npm install -g grunt-cli

info_echo "Install Bower"
npm install -g bower

info_echo "Install Coffeelint"
npm install -g coffeelint
