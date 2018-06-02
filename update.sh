echo -n "Update bash configuration..."
cp -f $HOME/.bashrc $HOME/.bashrc_bak
cp -f .bashrc $HOME/.bashrc
. $HOME/.bashrc
echo "Done"

echo -n "Update TMUX configuration..."
cp -f $HOME/.tmux.conf $HOME/.tmux.conf_bak
cp -f tmux.conf $HOME/.tmux.conf
echo "Done"

echo -n "Update VIM configuration..."
cp -f $HOME/.vimrc $HOME/.vimrc_bak
cp -f .vimrc $HOME/.vimrc
cp -f exvim/.vimrc* $HOME/exvim/
#vim -E -u $HOME/.vimrc +qall
echo "Done"

echo -n "Update YCM configuration..."
cp -f $HOME/.ycm_extra_conf.py $HOME/.ycm_extra_config.py_bak
cp -f ycm_extra_conf.py $HOME/.ycm_extra_conf.py
echo "Done"

