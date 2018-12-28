#!/bin/bash

timestamp=$( date +%Y%m%d_%H%M%S )
echo ------------------------------------------
echo "// Installing tmux configuration file..."
if [ -f $HOME/.tmux.conf ]; then
   # check whether tmux file is identical
   is_identical=$(diff "tmux.conf" "$HOME/.tmux.conf")
   # if identical then skip installation
   if [ "$is_identical" != "" ]; then
      echo "Found existing .tmux.conf. Moved to .tmux.conf_${timestamp}"
      cp -f $HOME/.tmux.conf $HOME/.tmux.conf_${timestamp}
   fi
fi
cp -f tmux.conf $HOME/.tmux.conf

