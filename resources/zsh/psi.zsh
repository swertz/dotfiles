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

alias r6='source /afs/cern.ch/sw/lcg/external/gcc/4.9/x86_64-slc6-gcc49-opt/setup.sh; pushd /afs/cern.ch/sw/lcg/app/releases/ROOT/6.06.08/x86_64-slc6-gcc49-opt/root/ > /dev/null; source bin/thisroot.sh; popd > /dev/null'
alias ana='export PATH=/swshare/anaconda/bin:$PATH'

if [[ -f $HOME/.local/bin/nvim ]]; then
    alias vim='$HOME/.local/bin/nvim'
    if [[ ! -L $HOME/.config/nvim/init.vim ]]; then
        ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim
    fi
fi

export KRB5_CONFIG=$HOME/.dotfiles/resources/krb.conf
