# Intro
configurations for vim + tmux on bash

# How to use
## tmux
### General
    prefix is set to <C-a>
    prefix + ?
       list all available commands  
### Session
    tmux new -s session_name
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
    <C-y> : move screen up one line
    <C-e> : move screen down one line
    u : undo last change
    <C-r> : redo last change
    :<C-r>" : paste the yarked text in the command mode
    :only : max current chosen window (delete all others! do this in NERDTree)
    :bufdo bd : close all buffers except this one
    <C-s> : turn off flow control <C-q> : turn on flow control
    :%s/foo/bar/gc
### shell command
    :!<cmd> : run shell command
    :! : run the last external command from shell history
    :!! repeasts the last command
    :silent !<cmd> : run command silently
    :r !<cmd> : save the output into the current buffer
### commenter
    <leader>cc: add comments to the lines
    <leader>c<space>: remove comments
### netrw
    R: rename
    D: delete
    go: open a file but stay in NERDTree
    %: create file
    d: create a directory
    :e. : return to initial directory 
    :NERDTreeFind : find the current file in the tree
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
