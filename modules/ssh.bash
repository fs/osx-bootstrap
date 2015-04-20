#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Checking for SSH key, generating one if it doesn't exist"
[[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

info_echo "Copying public key to clipboard. Paste it into your Github account"
[[ -f ~/.ssh/id_rsa.pub ]] && pbcopy < ~/.ssh/id_rsa.pub
open https://github.com/account/ssh
