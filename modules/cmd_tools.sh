clang_path="/Library/Developer/CommandLineTools/usr/bin/clang"

info_echo "Checking Command Line Tools"
if ! test -e $clang_path; then
  info_echo "Installing the Command Line Tools (expect a GUI popup):"
  /usr/bin/xcode-select --install

  info_echo "Press any key when the installation has completed"
  read -n 1

  if ! test -e $clang_path; then
    error_echo "Command Line Tools does not installed, exiting"
    exit
  fi
fi
