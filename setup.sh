#--------------------------------install xcode---------------------------------#
xcode-select —-install
#-------------------------------install Homebrew-------------------------------#
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#-----------------------------install dependencies-----------------------------#
brew install openssl readline sqlite3 xz zlib
#--------------------------------create ssh-key--------------------------------#
mkdir -p $HOME/.ssh
chmod 0700 $HOME/.ssh
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa -y
#---------------------------------install Iterm--------------------------------#
brew install --cask iterm2
#----------------------------------install Zsh---------------------------------#
brew install zsh
#-------------------------------install Oh My Zsh------------------------------#
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#----------------------------------install Nvim--------------------------------#
brew install neovim
#----------------------------install Python with pyenv-------------------------#
brew install pyenv
cp -f $HOME/Setup/.zshrc $HOME/
source $HOME/.zshrc
exec zsh
pyenv install 3.10.0
pyenv global 3.10.0
#-----------------------------install vscode with brew-------------------------#
brew install --cask visual-studio-code
#------------------------------------------------------------------------------#
#fuzzy finders -> telescope by tj
#lsp nvim-lspconfig -> error checking
#auto complete -> nvim-cmp
#
