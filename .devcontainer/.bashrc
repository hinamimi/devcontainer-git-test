### Set Prompt ###
if [ -f /root/git/git-completion.bash ]; then
    source /root/git/git-completion.bash
fi
if [ -f /root/git/git-prompt.sh ]; then
    source /root/git/git-prompt.sh

    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUPSTREAM=auto

    PS1=${PS1}'$(__git_ps1 " (%s)") '
fi
