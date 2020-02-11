# OS X Bootstrap

Script to set up a macOS X for Rails development.

## Requirements

macOS X version >= 10.15

## Install

Run the setup script which will clone repository to `~/.osx-bootstrap` directory
and run `~/.osx-bootstrap/modules/*` scripts.

```bash
bash <(curl -s https://raw.githubusercontent.com/fs/osx-bootstrap/master/bin/setup)
```

Or you can run each module script one-by-one:

```bash
git clone -b master https://github.com/fs/osx-bootstrap.git
~/.osx-bootstrap/modules/osx_defaults.bash
```

## What it sets up

* OS X Command Line Tools
* SSH keys
* **Homebrew** for managing operating system libraries (OS X only)
* **git** source code management system
* **Postgresql** for storing relational data
* **Redis** for storing key-value data
* **ImageMagick** for cropping and resizing images
* **watch** for periodically executing a program and displaying the output
* **[Z](https://github.com/rupa/z)** (jump around) for a faster way to navigate your filesystem
* **ssh-copy-id** to deliver your public key in a remote machine's authorized_keys
* **Heroku Toolbelt** for interacting with the Heroku API
* **tmux** for saving project state and switching between projects
* **rbenv** for managing versions of the Ruby programming language in the `/usr/local/var/rbenv`
* **ruby-build** for installing Ruby versions
* **Ruby** programming language, latest stable version
* **NVM** for managing versions of the Node.js
* **Node.js** stable for writing JavaScript general-purpose code
* Software installed with Brew Cask in to `/Applications`:
  * Google Chrome
  * ChromeDriver
  * GraphiQL
  * iTerm2
  * Java
  * Postman
  * Skype
  * Slack
  * Spectacle
  * Sublime Text 3
  * The Unarchiver
  * Visual Studio Code
  * Zoom
* Set OS X defaults (faster animation, security settings etc)

## Credits

OS X Bootstrap is maintained by [Timur Vafin](http://github.com/timurvafin).
It was written by [Flatstack](http://www.flatstack.com) with the help of our
[contributors](http://github.com/fs/osx-bootstrap/contributors).

[<img src="http://www.flatstack.com/logo.svg" width="100"/>](http://www.flatstack.com)
