# paths
M_PATH="$HOME/setup"
F_PATH="$M_PATH/commands"
C_PATH="$M_PATH/config"

# theme
ZSH_THEME="eastwood" # <-- i like this one

#custom setups
source $C_PATH/plugins.zsh
source $C_PATH/keybinds.zsh
source $C_PATH/aliases.zsh
source $C_PATH/exports.zsh
source $C_PATH/options.zsh
source $C_PATH/colors.zsh

#Custom zsh functions
source $F_PATH/new_prod.zsh
source $F_PATH/push.zsh
source $F_PATH/edit_man.zsh
source $F_PATH/reload_zsh.zsh
source $F_PATH/kubernetes.zsh

