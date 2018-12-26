# Intro
configurations for vim + tmux on bash

# How to use
## tmux
### General
    prefix is set to <C-a>
    prefix + ?
       list all available commands
### Session
    tmux new -s session_name (prefix :new)
        creates a new tmux session named session_name
    tmux a -t session_name
        attaches to an existing tmux session named session_name
    tmux switch -t session_name (prefix + s)
        switches to an existing session named session_name
    tmux ls
        lists existing tmux sessions
    tmux detach (prefix + d)
        detach the currently attached session
### Windows(prefix +)
    c : create
    k : kill window
    , : rename window
    number : go to <num> window
### Panes(prefix +)
    | : vertical split
    - : horizontal split
    x : kill
    z : zoom in/out
    Ctrl + <arrow> (keep pressing Ctrl): resize the current pane
### Copy mode
    prefix + [ : enter copy mode
    space: start to make a selection
    enter: copy to default tmux buffers and exit copy mode
    prefix + ] : paste the text in the terminal

## vim
### General
    zz : move current line to the middle
    zt : move current line to the top
    zb : move current line to the bottom
    kj : exit insert mode
    <C-y> : move screen up one line
    <C-e> : move screen down one line
    u : undo last change
    :<C-r>" : paste the yarked text in the command mode
    :only : max current chosen window (delete all others! do this in NERDTree)
    :bufdo bd : close all buffers except this one
    :%s/foo/bar/g : replace foo with bar in the whole file

### shell command
    <leader>r : run command
    <leader>rr : rerun last command

### git support
    :Gstatus : show git status (- to add/reset file)
    :Gcommit : git commit
    :Gdiff : diff the current file

### commenter TODO: doxygen support
    <leader>cc: add comments to the lines
    <leader>c<space>: remove comments

### code snipet TODO

### netrw
    <F2> : open/close NERDTree
    <F3> : find the current file in the tree
    R: refresh the whole tree

### vimdiff
    ]c : next difference
    [c : previous difference
    do : diff obtain from the other file
    dp : diff put to the other file
    zo : open folded text
    zc : close folded text
    :diffupdate : reload files

# How to set it up
tmux can be installed via cadenv


# References
## Tmux
- shortcuts
    https://robots.thoughtbot.com/a-tmux-crash-course
## exvim
    https://exvim.github.io/
## use vim as IDE
    https://github.com/yangyangwithgnu/use_vim_as_ide
## vim
- highlight: http://vim.wikia.com/wiki/Highlight_current_line
- line number: https://jeffkreeftmeijer.com/vim-number/#relative-line-numbers
## SVN
- svn command shortcuts are in bashrc
