# dotfiles-windows

Add some tweaks into current Windows user's home directory.
Inspired by <https://github.com/paulirish/dotfiles> for MacOS.
For Unix I prefer my <https://github.com/StefanScherer/dotfiles>.

Get even more features with clink! See below.
## Features
### Syntax highlighting

* gvim highlights inline shell scripts in Vagrantfiles

### Tools

* **addtime**: show relative time stamp in stdout of another tool.
  Usage: anothertool | addtime
* **timeref**: show relative time diffs in logfile.
  Usage: timeref logfile | gvim -
* **viewpath**: show PATH environemnt in gvim pretty printed
* **z**: change to one of your favorite project folder

### Aliases

* **n**: notepad 
* **e**: open explorer in current dir 
* **..**: one dir up
* **...**: two dirs up
* **....**: three dirs up
* **.....**: four dirs up
* **~**: go into users home directory
* **hosts**: edit your hosts file, if sudo is missing, call `cinst sudo`
* **logvi logfile**: view a log file with relative times in gvim

### Vagrant

* default Vagrantfile for global settings. **Beware** save your previous Vagrantfile before calling sync -f

### VIM

* Vundle
* nerdtree
* vim-nerdtree-tabs
* vim-colors-solarized

# Installation
    git clone https://github.com/StefanScherer/dotfiles-windows && cd dotfiles-windows && sync.bat

To update later on, just run the sync again.

To install clink with the chocolatey package, just type

    cinst devbox-clink

and then run the sync -f command again. Close current shell and open a new one. Then clink will do its magic.

# Installation from barebone Windows
Open up a command prompt and enter the following command to install basic tools.

    @powershell -NoProfile -ExecutionPolicy unrestricted -Command "((new-object net.webclient).DownloadFile('https://raw.github.com/StefanScherer/dotfiles-windows/install/install.bat', '%Temp%\install.bat'))" && %Temp%\install.bat

# Licensing
Copyright (c) 2014 Stefan Scherer

MIT License, see LICENSE.txt for more details.
