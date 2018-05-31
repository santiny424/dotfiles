#!/bin/bash
# this script installs exvim and tmux

# exit on error
set -e

echo -n "Install exvim..."
cp -f -r $HOME/exvim $HOME/exvim_bak
cp -f -r exvim $HOME/exvim
echo "Done"

./update.sh
