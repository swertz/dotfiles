# Source global definitions
# Should stay above all else!
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias aup='su -c "apt-get update && apt-get dist-upgrade"'
alias ase='apt-cache search'
alias r6='source ~/Soft/root/build_root/bin/thisroot.sh'
alias bt='su -c "/home/sebastien/.reset_bluetooth"'

export PATH=$PATH:/usr/local/cuda-8.0/bin:/usr/lib64/nvidia-current/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-8.0/lib64:/usr/lib64/nvidia-current/

export GTK2_RC_FILES=$HOME/.gtkrc-2.0
export VIDYO_AUDIO_FRAMEWORK=ALSA

alias konq='konqueror --profile filemanagement&'

## set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#    xterm-color) color_prompt=yes;;
#esac
#
## uncomment for a colored prompt, if the terminal has the capability; turned
## off by default to not distract the user: the focus in a terminal window
## should be on the output of commands, not on the prompt
##force_color_prompt=yes
#
#if [ -n "$force_color_prompt" ]; then
#    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#	# We have color support; assume it's compliant with Ecma-48
#	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#	# a case would tend to support setf rather than setaf.)
#	color_prompt=yes
#    else
#	color_prompt=
#    fi
#fi
#
#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
#unset color_prompt force_color_prompt
#
## If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac
#
## enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    alias ls='ls --color=auto'
#    #alias dir='dir --color=auto'
#    #alias vdir='vdir --color=auto'
#
#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
#fi
#
## make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
#
#echo "__________________________________________________________"
#echo "   / ()\    __      __   _                    "
#echo " _|_____|_  \ \    / /__| |__ ___ _ __  ___   "
#echo "| | === | |  \ \/\/ / -_) / _/ _ \ '  \/ -_)_    /  _  \ "
#echo "|_|  O  |_|   \_/\_/\___|_\__\___/_|_|_\___( )  |-=(_)=-|"
#echo " ||  O  ||     ___      _             _   _      \     /"
#echo " ||__*__||    / __| ___| |__  __ _ __| |_(_)___ _ _  "
#echo "|~ \___/ ~|   \__ \/ -_) '_ \/ _\` (_-<  _| / -_) ' \ "
#echo "/=\ /=\ /=\   |___/\___|_.__/\__,_/__/\__|_\___|_||_|"
#echo "[_]_[_]_[_]_______________________________________________"
#echo "Useful commands:"
#echo "add        ---> configure ssh agent"
#echo "ui1        ---> ssh to ingrid-ui1 with X server"
#echo "ui2        ---> ssh to ingrid-ui2 with X server"
#echo "s02        ---> ssh to server02"
#echo "lxp        ---> ssh to lxplus"
#echo "rdskcms    ---> launch CMS remote desktop on Cern network"
#echo "rdskinit   ---> configure CMS remote desktop from outside"
#echo "rdskcmsout ---> launch CMS remote desktop from outside"
#echo "fwdTkclust ---> configure tunnel to CMS network"
#echo "joinPDF    ---> usage: joinPDF out in1 in2 ..."
#echo "bt         ---> reset bluetooth"
