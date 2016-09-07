#!/usr/bin/env bash

# Simple script to set up basic dev tools.

apt-get update
apt-get upgrade
apt-get install -y git tmux curl zsh

su vagrant -c 'git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh'
chsh vagrant -s $(which zsh)

su vagrant -c 'git clone https://github.com/arthurtoper/devprofile.git ~/devprofile'
su vagrant -c '~/devprofile/createlinks.sh'
su vagrant -c 'cd ~/devprofile && git submodule init && git submodule update'

