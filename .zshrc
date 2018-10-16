# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dardan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# load nvm
# only if .nvm folder exists
[ -s "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"
# --no-use to disable initial loading of npm and node
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

