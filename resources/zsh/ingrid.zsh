# Source global definitions
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

alias r5='module load root/5.34.09-sl6_gcc44'
alias r6='module load root/6.06.02-sl6_gcc49'
alias cms_env="module purge; module load grid/grid_environment_sl6; module load crab/crab3; module load cms/cmssw;"

alias mem='cd /home/ucl/cp3/swertz/tests_MEM/MoMEMta'
alias eft='cd /home/ucl/cp3/swertz/ttbar_effth_delphes/analyzer'
alias store='cd /storage/data/cms/store/user/swertz/'
alias llbb='cd /home/ucl/cp3/swertz/scratch/CMSSW_8_0_25/src/cp3_llbb/'
alias pip_upgrade='pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install --local -U'
alias setup='module load boost/1.57_sl6_gcc49; module load cmake/cmake-3.4.1; module load python/python27_sl6_gcc49'

alias vim='$HOME/.local/nvim'

export PYTHIA8=/home/ucl/cp3/swertz/scratch/Pythia/pythia8226/

