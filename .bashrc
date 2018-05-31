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

#####################################
# EUV Source
#####################################
alias mkl='rmake LOCAL=1'
alias mk='rmake'
alias rt='cd $WORKSPACE_ROOT'
#alias runFFATests='(cd $WORKSPACE_ROOT/targets/lx86/release/bin; source /home/dholsrei/scripts/test_ffa.sh)'
#alias runFFATests='(cd $WORKSPACE_ROOT/LaserPositioningControl/LPCDriver; rmake run_tests)'
#alias runTest='$WORKSPACE_ROOT/LcSwFacilities/LSFBuild/scripts/run_tests.pl -l $WORKSPACE_ROOT/targets/lx86/release/log/'
#alias wrwb='/sdev/wrwb-pilot/current'
#alias vxprj='/sdev/WindRiver/VxWorks6.9.3.1.2/wrenv.sh -p vxworks-6.9 vxprj'

function a()
{

num=0
folder[0]=.
for i in $(ls -d /workspace/zqiaowei/EUV-*/);
do
        num=$((num+1));
        echo $num - ${i%%/};
        folder[$num]=${i%%/};
done

echo Choose branch to activate:
read folder_number;

cd ${folder[($folder_number)]};
echo Activating the branch ...
source activate.sh

}

function g2p()
{
   if [ "$1" != "" ]; then
      echo ssh to proto with IP: "$1"
      ssh -X msc@$1 -p 60022
   else echo no IP specified!
   fi
}

function gtb()
{
   if [ "$1" != "" ]; then
      echo ssh to tb "$1"
      ssh -X msc@cymer-tb$1 -p 60022
   else echo no Testbench specified!
   fi
}

function ee()
{
    eclipse $*
    wmctrl -a Eclipse
}

function g()
{
   if [ "$1" != "" ]; then
      echo ssh to grey build server "$1"
      ssh -X nlvdhy$1
   else echo no server number specified!
   fi
}

function g2d()
{
num=0
#first show the list of devbenches
devbench list

#get the IP
read num
num_match="$num. zqiaowei"
IP_addr_match="([0-9]{1,3}[\.]){3}[0-9]{1,3}"
IP=$(devbench list -L %n%i | grep "$num_match" | grep -E -o "$IP_addr_match")
echo $IP
ssh -X msc@$IP
}


