# Source global definitions
# Should stay above all else!
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

# User specific aliases and functions

alias r6='source /home/swertz/.local/test/root-6.14.04/builddir/bin/thisroot.sh'
alias don='xrandr --output DP-1 --auto --right-of eDP-1'
alias doff='xrandr --output DP-1 --off'
alias pip_upgrade='sudo pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs sudo pip install -U'

export GTK2_RC_FILES=$HOME/.gtkrc-2.0
export SSH_ASKPASS=ksshaskpass
export KRB5_CONFIG=$HOME/.dotfiles/resources/krb.conf

if [[ -d "$HOME/.local/bin" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi

function mountPSI() {
    sshfs -o follow_symlinks,reconnect swertz@t3ui07.psi.ch:/t3home/swertz/ /media/psi
}
function mount14() {
    sshfs  -o follow_symlinks,reconnect local14chstack@fpixp1hc.cern.ch:/home/local14chstack /media/14ch
}
