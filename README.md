# OS X Bootstrap

[![Build Status](https://travis-ci.org/fs/osx-bootstrap.svg?branch=master)](https://travis-ci.org/fs/osx-bootstrap)

Script to set up a macOS X for Rails development.

## Requirements

macOS X version >= 10.13

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
* **Qt** for headless JavaScript testing via Capybara Webkit
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
* **bundler** gem for managing Ruby libraries
* Software installed with Brew Cask in to `/Applications`:
  * iTerm2
  * Skype
  * Slack
  * Google Chrome,
  * Sublime Text 3
  * Java
  * The Unarchiver
  * Spectacle
* Set OS X defaults (faster animation, security settings etc)

## Credits

OS X Bootstrap is maintained by [Timur Vafin](http://github.com/timurvafin).
It was written by [Flatstack](http://www.flatstack.com) with the help of our
[contributors](http://github.com/fs/osx-bootstrap/contributors).

[<img src="http://www.flatstack.com/logo.svg" width="100"/>](http://www.flatstack.com)
