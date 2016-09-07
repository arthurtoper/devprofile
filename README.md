Arthur's Dev Profile
==========

This is a collection of useful configuration files for tmux, Vim etc. which I use to quickly build up a basic usable dev environment.

Requirements
----------

* Git (well, obviously)
* ZSH - ideally Oh-My-Zsh
* tmux
* Vim, ideally a fairly recent one

Usage
----------

There's a super-simple 'createlinks.sh' script which symlinks the contents of the 'home' folder in this repo to the executing user's home folder. Thus, the installation steps are:

1. git clone this repository to somewhere sensible
2. run createlinks.sh

Alternatively, you can do something along these lines:

```bash
git clone https://github.com/arthurtoper/devprofile.git ~/devprofile
~/devprofile/createlinks.sh
cd ~/devprofile && git submodule init && git submodule update
```

An example `devprofile.sh` script is included in this repo, designed for use with Vagrant and a Ubuntu guest.

Updating
----------

To update the configuration, just run a git pull wherever you cloned this repository to.

Plugins
----------

Vim plugins, using Pathogen, are set up as Git submodules to make maintenance easier. To add a new one, use the following command:

	git submodule add <git repo URL> home/.vim/bundles/<plugin name>

To update all plugins, you can use the following command:

	git submodule foreach git pull origin master

