#!/bin/sh
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

ansible-playbook --connection=local "$SCRIPTPATH/win-10.yml"

