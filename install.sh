#!/bin/bash
# install vim/tmux environment

cd vim && ./installvim.sh && cd ..
ret=$?
if ! test "$ret" -eq 0; then
    echo >&2 "// Failed to install vim"
    exit 1
fi

cd tmux && ./installtmux.sh && cd ..
ret=$?
if ! test "$ret" -eq 0; then
   echo >&2 "// Failed to install tmux"
   exit 1
fi

echo ------------------------------------------
echo // You can now start using vim + tmux
echo // Try type tmux and then start vi

