#Reload ZSH with Ctrl + S
resourcezsh () {
  BUFFER="exec -l zsh"
  zle accept-line -w
  BUFFER="clear"
  zle accept-line -w
}
zle -N resourcezsh
bindkey '^S' resourcezsh