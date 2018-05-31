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
    tmux switch -t session_name
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
### netrw
    R: rename
    D: delete
    go: open a file but stay in NERDTree
    %: create file
    d: create a directory
    :e. : return to initial directory 
    :NERDTreeFind : find the current file in the tree

## GIT
    git branch -av: list all existing branches
    git checkout <branch> : switch to an existing branch
    git checkout -b <name> : create a new branch
    git push origin :<branch> : delete remote branch
    git branch -d <branch> : delete local branch
    git fech : download changes but not integrated into HEAD
    git pull : download changes and directly integrated into HEAD
    git push : publish local changes on a remote, such as commits
    git remote set-url origin your_new_clone_url : add remote origin
    git stash : stash away current local changes without commit (snapshot like)
    git diff myfile.txt
    git rm --cached <file> : remove file remotely ONLY
    git diff --cached myfile.txt

## SVN (EUV specific)
    ws-status | grep ^.*C.*/workspace : find out all conflicted files

# How to set it up
tmux can be installed via cadenv
exvim can be installed by copy the complete exvim directory
Reset terminal color palette and compatibility

# References
## Tmux
- shortcuts
    https://robots.thoughtbot.com/a-tmux-crash-course
## VIM
- highlight: http://vim.wikia.com/wiki/Highlight_current_line
- line number: https://jeffkreeftmeijer.com/vim-number/#relative-line-numbers
## SVN
- svn command shortcuts are in bashrc

## Windows Subsystem Linux (WSL)
- Enable Linux subsystem
- Install Ubuntu from Windows store
- Bash color/theme configuration
	Use Molokai color for windows bash theme
	color thems for WSL is from Windows CMD properties
	https://github.com/Microsoft/console/releases/tag/1708.14008
    https://github.com/Microsoft/console/tree/1708.14008/tools/ColorTool
