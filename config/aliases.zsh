#nvim alias
alias vim="nvim"

#Pyenv protection from homebrew linking
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
#pyenv stuff
PATH=$(pyenv root)/shims:$PATH
eval "$(pyenv init -)"

#automate commands
alias mcpp="cp -rn $HOME/Setup/misc_func/auto_cpp_maker/output_utils ./ ; python $HOME/Setup/misc_func/auto_cpp_maker/auto_cpp.py"
