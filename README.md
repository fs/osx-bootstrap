# OS X Bootstrap

Script to set up a Mac OS X for Rails development.

## Requirements

Mac OS X > 10.9.0

## Install

Run the script:

```bash
bash <(curl -s https://raw.github.com/fs/osx-bootstrap/dev/go)
```

## What it sets up

* Command Line Tools
* SSH keys
* Homebrew for managing operating system libraries (OS X only)
* Git and [GitHub command line client](http://owenou.com/gh/)
* Postgres for storing relational data
* Redis for storing key-value data
* ImageMagick for cropping and resizing images
* Qt for headless JavaScript testing via Capybara Webkit
* Watch for periodically executing a program and displaying the output
* [Z](https://github.com/rupa/z) (jump around) for a faster way to navigate your filesystem
* ssh-copy-id to deliver your public key in a remote machine's authorized_keys
* Heroku Toolbelt for interacting with the Heroku API
* Rbenv for managing versions of the Ruby programming language
* Ruby Build for installing Rubies
* Ruby stable for writing general-purpose code
* Bundler gem for managing Ruby libraries
* Software: iTerm2, HipChat, Skype, Google Chrome, Firefox, Balsamiq Mockups,
  Bittorrent Sync, Google Drive, f-lux, Sublime Text 3, Java, Alfred, Dropbox, The Unarchiver
* Set OS X defaults (faster animation, etc)

## Credits

Maintained by Nickolay Abdrafikov

![FlatStack](http://www.flatstack.com/assets/images/logo.png)
