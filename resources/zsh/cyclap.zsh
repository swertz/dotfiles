# Source global definitions
# Should stay above all else!
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

# User specific aliases and functions

alias r6='source /home/swertz/.local/test/root-6.22.0/bin/thisroot.sh'
alias don='xrandr --output DP-1 --auto --right-of eDP-1'
alias doff='xrandr --output DP-1 --off'
alias pip_upgrade='pip3 freeze --local | grep -v ^-e | cut -d = -f 1  | xargs pip3 install -U'

export GTK2_RC_FILES=$HOME/.gtkrc-2.0
export SSH_ASKPASS=ksshaskpass

if [[ -d "$HOME/.local/bin" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi

source /opt/conda/etc/profile.d/conda.sh

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
