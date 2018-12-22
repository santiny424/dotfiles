timestamp=$( date +%Y%m%d_%H%M%S )

echo -n "Update TMUX configuration..."
cp -f $HOME/.tmux.conf $HOME/.tmux.conf_${timestamp}
cp -f tmux.conf $HOME/.tmux.conf
echo "Done"

echo -n "Update VIM configuration..."
cp -f $HOME/.vimrc $HOME/.vimrc_${timestamp}
cp -f .vimrc $HOME/.vimrc
echo "Done"

