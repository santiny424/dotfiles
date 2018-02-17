"
" ==================================================================
" Language
" ==================================================================
set langmenu=none
let s:uname = system("uname -s")
silent exec 'language en_US.utf8'

" ==================================================================
" Plugins manager (Vundle)
" ==================================================================
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" ------------------------------------------------------------------
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ------------------------------------------------------------------
" Status bar
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1 " enable buffers display in tab
let g:airline#extensions#tabline#buffer_nr_show = 1 " show buffer num

" ------------------------------------------------------------------
" same shortcuts for vim and tmux splits
Plugin 'christoomey/vim-tmux-navigator'
" Switch between splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" ------------------------------------------------------------------
" execute commands in tmux from vim directly
Plugin 'benmills/vimux'
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" ------------------------------------------------------------------
" NerdTree
Plugin 'scrooloose/nerdtree'

" ------------------------------------------------------------------
" auto complete
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" ------------------------------------------------------------------
"TODO: code snipets
" http://blog.csdn.net/demorngel/article/details/69055363

" ------------------------------------------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ==================================================================
" Visual (settings from exVim project)
" ==================================================================
set background=dark
set t_Co=256 " make sure our terminal use 256 color

set matchtime=0 " 0 second to show the matching paren ( much faster )
set nu " show line number
set scrolloff=0 " minimal number of screen lines to keep above and below the cursor
set nowrap " do not wrap text

set wildmenu " turn on wild menu, try typing :h and press <Tab>
set showcmd " display incomplete commands
set cmdheight=1 " 1 screen lines to use for the command-line
set ruler " show the cursor position all the time
set hidden " allow to change buffer without saving
set shortmess=aoOtTI " shortens messages to avoid 'press a key' prompt
set lazyredraw " do not redraw while executing macros (much faster)
set display+=lastline " for easy browse last line with wrap text
set laststatus=2 " always have status-line
set titlestring=%t\ (%{expand(\"%:p:.:h\")}/)

" ------------------------------------------------------------------
" line numbers (Hybrid)
" https://jeffkreeftmeijer.com/vim-number/#relative-line-numbers
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" ------------------------------------------------------------------
" highlight current line
" http://vim.wikia.com/wiki/Highlight_current_line
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

" ------------------------------------------------------------------
" TODO: this does not work on WSL on Windows 10
" cursor shape
" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
" if exists('$TMUX')
"     let &t_SI = "<Esc>[3 q"
"     let &t_EI = "<Esc>[0 q"
" else
"     let &t_SI = "<Esc>]50;CursorShape=1x7"
"     let &t_EI = "<Esc>]50;CursorShape=0x7"
" endif

" let &t_SI = "\<Esc>[6 q"
" let &t_SR = "\<Esc>[4 q"
" let &t_EI = "\<Esc>[2 q"

" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" 
" ==================================================================
" Editing
" ==================================================================
set ai " autoindent
set si " smartindent
set backspace=indent,eol,start " allow backspacing over everything in insert mode

" indent options
" see help cinoptions-values for more details
set cinoptions=>s,e0,n0,f0,{0,}0,^0,:0,=s,l0,b0,g0,hs,ps,ts,is,+s,c3,C0,0,(0,us,U0,w0,W0,m0,j0,)20,*30
" default '0{,0},0),:,0#,!^F,o,O,e' disable 0# for not ident preprocess
" set cinkeys=0{,0},0),:,!^F,o,O,e
set cindent shiftwidth=4 " set cindent on to autoinent when editing c/c++ file, with 4 shift width
set tabstop=4 " set tabstop to 4 characters
set expandtab " set expandtab on, the tab will be change to space automaticaly
set ve=block " in visual block mode, cursor can be positioned where there is no actual character

" enhance '<' '>' , do not need to reselect the block after shift it.
vnoremap < <gv
vnoremap > >gv

" ==================================================================
" Search
" ==================================================================
" ------------------------------------------------------------------
" text search
set showmatch " show matching paren
set incsearch " do incremental searching
set hlsearch " highlight search terms
set ignorecase " set search/replace pattern to ignore case
set smartcase " set smartcase mode on, If there is upper case character in the search patern, the 'ignorecase' option will be override.

" ------------------------------------------------------------------
" file search
set path +=.,**,
" TODO remove specific directory per project
" set path -=

" netrw options
let g:netrw_banner = 0 " do not use banner at the top
let g:netrw_liststyle = 3 " use list style
let g:netrw_winsize = 30 " netrw window sizlet g:netrw_winsize = 30 " netrw window sizee
" ==================================================================
" Shortcuts
" ==================================================================
let mapleader = ","

"map <Leader>- :split<CR>
"map <Leader>| :vsplit<CR>

" delete a buffer without closing the window
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>.

