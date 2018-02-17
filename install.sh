echo -n "Install TMUX configuration..."
cp -f tmux.conf $HOME/.tmux.conf
echo "Done"

echo -n "Install YCM configuration..."
cp -f ycm_extra_conf.py $HOME/.ycm_extra_conf
echo "Done"

echo -n "Install VIM configuration..."
cp -f vimrc $HOME/.vimrc
vim -E -u $HOME/.vimrc +qall
echo "Done"
