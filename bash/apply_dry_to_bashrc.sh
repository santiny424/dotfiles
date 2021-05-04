#!/usr/bin/env bash
# this file inject BASH settings into the last line of ~/.bashrc

# get the current path
CURRENT_PATH="$(dirname $(readlink -f "$0"))"

# inject source only if we haven't done it yet
if ! grep -qc 'dry_bashrc' ~/.bashrc ; then
    echo Apply Bash settings...
    echo >> ~/.bashrc
    echo "source $CURRENT_PATH/dry_bashrc" >> ~/.bashrc

    echo "You now need to close and restart the Bash shell"
else
    echo "You already have DRY bash"
fi


