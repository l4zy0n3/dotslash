# START TMUX ON STARTUP
#====================
[[ $- != *i* ]] && return
[[ $TERM != screen* ]] && exec tmux -2
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file
export PATH=$PATH:"/opt/anaconda/bin"
alias condastart="source activate"
alias condastop="source deactivate"
alias vi=vim
