#!/bin/bash
source ../utilities.sh

timestamp=$( date +%Y%m%d_%H%M%S )
echo ------------------------------------------
echo "// Installing tmux configuration file..."
install_file tmux.conf $HOME/.tmux.conf

