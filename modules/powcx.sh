brew install pow

POW_ROOT="$HOME/Library/Application Support/Pow"
mkdir -p "$POW_ROOT/Hosts"

# but link to Homebrew versions
ln -s /usr/local/Cellar/pow "$POW_ROOT/Versions"
cd "$POW_ROOT"
ln -s Versions/0.4.0 Current

cd "$HOME"
[[ -a .pow ]] || ln -s "$POW_ROOT/Hosts" .pow

# post-install in brew info
sudo pow --install-system
pow --install-local

sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist
