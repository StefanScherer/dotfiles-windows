# dotfiles-windows

Add some tweaks into current Windows user's home directory.
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
* **hosts**: edit your hosts file, if sudo is missing, call `cinst sudo`
* **subl**: open Sublime Text 3

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

### Sublime Text 3

* My user preferences for Sublime Text 3 are stored in this repo. Take care. Use **subl** to open editor.
* To install it, I use `cinst SublimeText3`
* Install Package Control, see [Package Control Installation](https://sublime.wbond.net/installation)

* **alt+m** - open Markdown HTML preview in browser

### Syntax highlighting

### Tools

* **addtime**: show relative time stamp in stdout of another tool.
  Usage: anothertool | addtime
* **timeref**: show relative time diffs in logfile.
  Usage: timeref logfile | gvim -
* **viewpath**: show PATH environemnt in gvim pretty printed

# Installation
```
git clone https://github.com/StefanScherer/dotfiles-windows && cd dotfiles-windows && sync.bat
```

To update later on, just run the sync again.

# Git-less installation
Open up a command prompt and enter the following command to install basic tools: DotNet4, Chocolatey and
useful command line tools.

    @powershell -NoProfile -ExecutionPolicy unrestricted -Command "((new-object net.webclient).DownloadFile('https://raw.github.com/StefanScherer/dotfiles-windows/install/install.bat', '%Temp%\install.bat'))" && %Temp%\install.bat

# Licensing
Copyright (c) 2014 Stefan Scherer

MIT License, see LICENSE.txt for more details.
