info_echo "Checking for SSH key, generating one if it doesn't exist"
[[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

info_echo "Copying public key to clipboard. Paste it into your Github account"
[[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub | pbcopy
open https://github.com/account/ssh
