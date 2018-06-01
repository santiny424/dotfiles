# .bashrc
#!/usr/bin/expect

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#####################################
# General
#####################################
# add local paths
PATH=/usr/bin/:$PATH:$HOME/bin:.:/sdev/bin:$HOME/local/bin:$HOME/idutils
export PATH

DATE=$(date +%Y%m%d-%H%M%S)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# color of bash terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# open vi in a new terminal
# alias vi='gnome-terminal --geometry=180x50 -- vim'

alias ll='ls -al'

function cgrep()
{
   LC_ALL=C fgrep -r $1 --exclude-dir={.svn,targets} --exclude={tags}
}

# disable flow control (shortcuts Ctrl+s and Ctrl+q)
stty -ixon
#####################################
# SVN
#####################################
export SVN_EDITOR=meld
alias sdif='svn diff --diff-cmd=meld'
alias sdifh='svn diff --diff-cmd=meld -r HEAD'
alias sdifp='svn diff --diff-cmd=meld -r PREV'
alias sdifb='svn diff --diff-cmd=meld -r BASE'
alias sdifr='svn diff --diff-cmd=meld -r'
alias sresolve='svn resolve --accept working'
alias p32='/sdev/opt/python32/usr/bin/python'
alias sadd="svn st | grep ^? | sed 's/?    //' | xargs svn add"
alias sac="ws-status | grep ^.*C.*/workspace"

#####################################
# GIT
#####################################
alias gdif='git difftool --tool=meld --no-prompt'



