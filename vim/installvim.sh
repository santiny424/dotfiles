#!/bin/bash
source ../utilities.sh

current_path=$(pwd)
echo ------------------------------------------
echo "// Installing Vundle..."
if [ ! -d "~/.vim/bundle/" ]; then
    mkdir -p ~/.vim/bundle/
fi
cd ~/.vim/bundle/

if [ ! -d "./Vundle.vim/" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
ret=$?
if ! test "$ret" -eq 0; then
    echo >&2 "// Failed to clone vundle from github"
    exit 1
fi

echo ------------------------------------------
echo "// Installing vim-plugins..."
cd ${current_path}
vim -u vimrc.plugins +PluginInstall +qall
ret=$?
if ! test "$ret" -eq 0; then
    echo >&2 "// Failed to install vim plugins"
    exit 1
fi

echo ------------------------------------------
echo "// Installing ctags configuration file... "
install_file ctags $HOME/.ctags

echo ------------------------------------------
echo "// Installing vimrc files... "
install_file .vimrc $HOME/.vimrc

