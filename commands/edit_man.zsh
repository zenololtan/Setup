#Make the man pages colorful
function man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[0;37;102m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[4;32m") \
        PAGER="${commands[less]:-$PAGER}" \
        _NROFF_U=1 \
        GROFF_NO_SGR=1 \
        PATH=${HOME}/bin:${PATH} \
    man "$@"
}