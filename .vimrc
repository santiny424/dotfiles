
" ------------------------------------------------------------------
"  Leader has to be changed at the top
"  Otherwise the shortcuts are not working
let g:mapleader = ";"

" ------------------------------------------------------------------
"  Use exVim
let g:exvim_custom_path='~/vim/exvim'
source ~/vim/exvim/.vimrc

" ------------------------------------------------------------------
"  reload vimrc files automaticaly
autocmd BufWritePost $MYVIMRC source $MYVIMRC

