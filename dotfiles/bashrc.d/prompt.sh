__bp_ps1 ()
{
    if [ -z "$BP_IP" ]; then
        return 0
    fi

    BP_PS1=" BP:$BP_IP "

    echo "$BP_PS1"
}

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")$(__bp_ps1)\$ '
