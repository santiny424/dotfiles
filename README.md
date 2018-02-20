
# Intro
configurations for vim + tmux

# How to use
## tmux
### General
    prefix is set to <C-a>
    prefix + ?
       list all available commands 
### Session
    tmux new -s session_name
        creates a new tmux session named session_name
    tmux attach -t session_name
        attaches to an existing tmux session named session_name
    tmux switch -t session_name
        switches to an existing session named session_name
    tmux ls
        lists existing tmux sessions
    tmux detach (prefix + d)
        detach the currently attached session
### Copy mode

## vim
### General
    <C-r>" : paste the yarked text in the command mode
### netrw
    R: rename
    D: delete
    %: create file
    d: create a directory
    :e. : return to initial directory 
# How does it work
## Windows Subsystem Linux (WSL)
- Enable Linux subsystem
- Install Ubuntu from Windows store
- Bash color/theme configuration
	Use Molokai color for windows bash theme
	color thems for WSL is from Windows CMD properties
	https://github.com/Microsoft/console/releases/tag/1708.14008
    https://github.com/Microsoft/console/tree/1708.14008/tools/ColorTool
## Tmux
- shortcuts
    https://robots.thoughtbot.com/a-tmux-crash-course
## VIM
- highlight: http://vim.wikia.com/wiki/Highlight_current_line
- line number: https://jeffkreeftmeijer.com/vim-number/#relative-line-numbers
