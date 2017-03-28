# OS X Bootstrap

[![Build Status](https://travis-ci.org/fs/osx-bootstrap.svg?branch=master)](https://travis-ci.org/fs/osx-bootstrap)

Script to set up a Mac OS X for Rails development.

## Requirements

Mac OS X > 10.11

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

* Command Line Tools
* SSH keys
* Homebrew for managing operating system libraries (OS X only)
* Git source code management system
* [FS-Tool](http://fs.github.io/fs-tool/) for creating pull-requests from command line
* Postgres for storing relational data
* Redis for storing key-value data
* ImageMagick for cropping and resizing images
* Qt for headless JavaScript testing via Capybara Webkit
* Watch for periodically executing a program and displaying the output
* [Z](https://github.com/rupa/z) (jump around) for a faster way to navigate your filesystem
* ssh-copy-id to deliver your public key in a remote machine's authorized_keys
* Heroku Toolbelt for interacting with the Heroku API
* Tmux for saving project state and switching between projects
* Rbenv for managing versions of the Ruby programming language in the `/usr/local/var/rbenv`
* Ruby Build for installing Rubies
* Ruby stable for writing general-purpose code
* NVM for managing versions of the Node.js
* Node.js stable for writing JavaScript general-purpose code
* Bundler gem for managing Ruby libraries
* Tmuxinator gem for managing tmux sessions easily
* Software installed with Brew Cask in to `/Applications` : iTerm2, Slack, Skype, Google Chrome,
  Firefox, Google Drive, Sublime Text 3, Java, Dropbox, The Unarchiver, Dash
* Set OS X defaults (faster animation, etc)

## Credits

OS X Bootstrap is maintained by [Timur Vafin](http://github.com/timurvafin).
It was written by [Flatstack](http://www.flatstack.com) with the help of our
[contributors](http://github.com/fs/osx-bootstrap/contributors).

[<img src="http://www.flatstack.com/logo.svg" width="100"/>](http://www.flatstack.com)
