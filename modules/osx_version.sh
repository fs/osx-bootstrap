required_osx_version="10.9.0"
osx_version=`/usr/bin/sw_vers -productVersion`

info_echo "Checking OsX version"
  if [ $(version $osx_version) -lt $(version $required_osx_version) ]; then
    error_echo "Your OsX $osx_version version is older then required $required_osx_version version. Exiting"
    exit
  fi
