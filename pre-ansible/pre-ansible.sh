#!/bin/sh

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

source "$SCRIPTPATH/setup-limited-account-user.sh"
source "$SCRIPTPATH/install_ansible.sh"
