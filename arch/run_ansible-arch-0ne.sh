#!/bin/sh
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

ansible-playbook --ask-become-pass "$SCRIPTPATH/arch-0ne.yml"
