#!/bin/sh

if ! command -v ansible >/dev/null; then
	echo "installing ansible"
	# refresh package db
	pacman -Syy
	pacman -S --noconfirm ansible
else
	echo "ansible already installed"
fi
