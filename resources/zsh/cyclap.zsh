# Source global definitions
# Should stay above all else!
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

# User specific aliases and functions

alias r6='conda activate root626'
alias pip_upgrade='pip3 freeze --local | grep -v ^-e | cut -d = -f 1  | xargs pip3 install -U'

export GTK2_RC_FILES=$HOME/.gtkrc-2.0
export SSH_ASKPASS=ksshaskpass

if [[ -d "$HOME/.local/bin" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi

alias mountPSI='sshfs -o follow_symlinks,reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,ConnectTimeout=2 swertz@t3ui03.psi.ch:/t3home/swertz/ /media/psi'
alias mountLXP='sshfs -o follow_symlinks,reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,ConnectTimeout=2 swertz@lxplus.cern.ch:/afs/cern.ch/user/s/swertz/ /media/lxplus'
alias mountUI1='sshfs -o follow_symlinks,reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,ConnectTimeout=2 ingrid-ui1:/home/users/s/w/swertz/ /media/ingrid'
function mountAll() {
    kini
    mountPSI
    mountLXP
    mountUI1
}
function unmountAll() {
    fusermount -uz /media/ingrid
    fusermount -uz /media/psi
    fusermount -uz /media/lxplus
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/swertz/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/swertz/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/swertz/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/swertz/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

