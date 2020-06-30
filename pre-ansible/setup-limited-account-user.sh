#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "expected 1 argument found $#" >&2
	exit 1
fi

if ! id -u "$1" > /dev/null 2>&1; then
	echo "user $1 does not exist, creating"
	useradd -m "$1" && passwd "$1"
else
	echo "user $1 already exists"
fi

# allow sudo for user
cat > /etc/sudoers.d/pre-ansbile-setup <<- EOM	
# generated file, do not alter
benni ALL=(ALL) ALL
EOM

# copy ssh keys from root to benni to prepare for ansible setup
target_home="$(eval echo ~$1)"
# copy all files from root's ssh folder, that do not exist yet in target
# this avoids overwriting existing files
cp -n -R "$HOME/.ssh" "$target_home"
chown -R "$1:$1" "$target_home/.ssh"
