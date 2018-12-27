#!/bin/bash

export ORIGINAL_PATH=`pwd`
echo ------------------------------------------
echo "// Installing Vundle..."
if [ ! -d "./vimfiles/" ]; then
    mkdir ./vimfiles/
fi
cd ./vimfiles/

if [ ! -d "./bundle/" ]; then
    mkdir ./bundle/
fi
cd ./bundle/

if [ ! -d "./Vundle.vim/" ]; then
    git clone https://github.com/gmarik/Vundle.vim Vundle.vim
fi
ret=$?
if ! test "$ret" -eq 0; then
    echo >&2 "// Failed to clone vundle from github"
    exit 1
fi

echo ------------------------------------------
echo "// Installing vim-plugins..."
cd ${ORIGINAL_PATH}
vim -u vimrc.plugins.minimal --cmd "set rtp=./vimfiles,\$VIMRUNTIME,./vimfiles/after" +PluginInstall +qall
ret=$?
if ! test "$ret" -eq 0; then
    echo >&2 "// Failed to install vim plugins"
    exit 1
fi

timestamp=$( date +%Y%m%d_%H%M%S )
echo ------------------------------------------
echo "// Installing vimrc files "
if [ -f $HOME/.vimrc ]; then
	echo "Found existing .vimrc. Moved to .vimrc_${timestamp}"
	cp -f $HOME/.vimrc $HOME/.vimrc_${timestamp}
fi
cp -f .vimrc $HOME/.vimrc

echo ------------------------------------------
echo "// Done"
