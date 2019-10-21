# Source global definitions
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

source /swshare/psit3/etc/profile.d/cms_ui_env.sh
source $VO_CMS_SW_DIR/cmsset_default.sh
alias crb='source /cvmfs/cms.cern.ch/crab3/crab.sh'

alias store='cd $HOME/store'
alias shome='cd $HOME/shome'
alias scr='cd $HOME/scratch'

if [[ -f $HOME/.local/bin/nvim ]]; then
    alias vim='$HOME/.local/bin/nvim'
    if [[ ! -L $HOME/.config/nvim/init.vim ]]; then
        ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim
    fi
fi

export KRB5_CONFIG=$HOME/.dotfiles/resources/krb.conf
