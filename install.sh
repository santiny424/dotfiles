#!/bin/bash
# install vim/tmux environment

echo ------------------------------------------
echo // Installing exvim...
rm -rf exvim
git clone https://github.com/exvim/main.git exvim
ret=$?
if ! test "$ret" -eq 0; then
    echo >&2 "// Failed to clone exvim from github"
    exit 1
fi

# install exvim
cd exvim && sh unix/install.sh && cd ..
ret=$?
if ! test "$ret" -eq 0; then
    echo >&2 "// Failed to install exvim"
    exit 1
fi

echo ------------------------------------------
echo // Updating vim and tmux config files...
./update.sh && vim +PluginInstall +qall
ret=$?
if ! test "$ret" -eq 0; then
    echo >&2 "// Failed to update config files"
    exit 1
fi

echo ------------------------------------------
echo // You can now start using vim + tmux
echo // Try type tmux and then start vi

