# dotfiles-windows

Add some tweaks into current Windows user's home directory.
Inspired by <https://github.com/paulirish/dotfiles> for MacOS.

## Features
### Syntax highlighting

* highlight inline shell scripts in Vagrantfiles

### Tools

* **addtime**: show relative time stamp in stdout of another tool.
  Usage: anothertool | addtime
* **z**: change to one of your favorite project folder

### Vagrant

* default Vagrantfile for global settings. **Beware** save your previous Vagrantfile before calling sync -f

# Installation
    git clone https://github.com/StefanScherer/dotfiles-windows && cd dotfiles-windows && sync.bat

To update later on, just run the sync again.

# Licensing
Copyright (c) 2014 Stefan Scherer

MIT License, see LICENSE.txt for more details.
