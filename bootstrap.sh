#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
function doIt() {
	rsync \
        --exclude ".git/" \
        --exclude ".gitmodules" \
        --exclude ".DS_Store" \
        --exclude "*.swp" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        -av --no-perms . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile
