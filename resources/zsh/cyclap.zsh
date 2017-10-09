# Source global definitions
# Should stay above all else!
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

# User specific aliases and functions

alias r6='source /home/swertz/.local/soft/root/builddir/bin/thisroot.sh'
alias don='xrandr --output DP-1-1 --auto --right-of eDP-1'
alias doff='xrandr --output DP-1-1 --off'
alias pip_upgrade='sudo pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs sudo pip install -U'

export GTK2_RC_FILES=$HOME/.gtkrc-2.0
export VIDYO_AUDIO_FRAMEWORK=ALSA
export PYTHONSTARTUP=~/.pythonrc
export TEXINPUTS=$TEXINPUTS:/home/swertz/Downloads/mtheme/:/home/swertz/Downloads/hepnames/:/home/swertz/Downloads/hepparticles/:

alias konq='konqueror --profile filemanagement&'

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

ssh-add $HOME/.ssh/id_rsa.ceci </dev/null > /dev/null
ssh-add $HOME/.ssh/id_rsa </dev/null > /dev/null

