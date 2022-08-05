#Press up and down to search matching history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

#Case insensitive tab completion, Also enables cd doc/fo/su to go to /documents/folder/subfolder
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
