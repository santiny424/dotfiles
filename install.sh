cp -f vimrc $HOME/.vimrc
vim -E -u $HOME/.vimrc +qall
echo "Install VIM configuration... Done"
# tmux configuration file

cp -f tmux.conf $HOME/.tmux.conf
echo "Install TMUX configuration... Done"
