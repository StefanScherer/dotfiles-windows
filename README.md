# dotfiles-windows

Add some tweaks into my PowerShell.
Inspired by <https://github.com/paulirish/dotfiles> for MacOS.
For Unix I prefer my <https://github.com/StefanScherer/dotfiles>.

## Features

### Aliases

* **..**: one dir up
* **...**: two dirs up
* **....**: three dirs up
* **.....**: four dirs up
* **home**: go into users home directory
* **z**: change to one of your favorite project folder

### Atom

My preferences for Atom.io are also stored here.

* **autocomplete-plus** - `keymap.cson` use ENTER instead of TAB
* **editorconfig**
* **language-batch**
* **language-powershell**

To setup Atom from scratch, first install it, then
```cmd
cinst atom
apm install parcel
```
Then open Atom and use menu `Packages / Parcel / Sync` to install all other plugins.
**Notice** Sometimes you have to Sync more than once to install all packages.

# Installation
```
git clone https://github.com/StefanScherer/dotfiles-windows ; cd dotfiles-windows ; sync.ps1
```

To update later on, just run the sync again.

# Licensing
Copyright (c) 2014 Stefan Scherer

MIT License, see LICENSE.txt for more details.
