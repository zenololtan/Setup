# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    .zshrc                                             :+:    :+:             #
#                                                      +:+                     #
#    By: zenotan <zenotan@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2021/10/27 00:08:08 by zenotan       #+#    #+#                  #
#    Updated: 2021/10/27 01:10:24 by zenotan       ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

#Custom zsh functions
source $HOME/setup/git_automate/new_prod.zsh
source $HOME/setup/git_automate/push.zsh
source $HOME/setup/zsh_functions/edit_man.zsh
source $HOME/setup/zsh_functions/reload_zsh.zsh
source $HOME/setup/zsh_functions/kubernetes.zsh

#Press up and down to search to matching history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

#Case insensitive tab completion, Also enables cd doc/fo/su to go to /documents/folder/subfolder
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

#I really don't see the use for Flow Control
unsetopt flow_control

#Pyenv protection from homebrew linking
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
#pyenv stuff
PATH=$(pyenv root)/shims:$PATH
eval "$(pyenv init -)"

#vscode code command
#export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

#automate commands
alias mcpp="python $HOME/automate/auto_cpp_maker/auto_cpp.py"
