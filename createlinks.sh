#!/usr/bin/env bash

shopt -s dotglob

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Looking for config files in $DIR/home/..."
CONFIG_FILES=$DIR/home/*
for c in $CONFIG_FILES
do
	LINK_NAME=$(basename $c)
	LINK_PATH=$(cd $(dirname $c); pwd)/$(basename $c)
	echo "Creating link for $LINK_NAME..."
	ln -s $LINK_PATH ~/$LINK_NAME
done
