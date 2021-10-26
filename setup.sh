#--------------------------------install xcode---------------------------------#
xcode-select —-install
#-------------------------------install Homebrew-------------------------------#
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#-----------------------------install dependencies-----------------------------#
brew install openssl readline sqlite3 xz zlib
#--------------------------------create ssh-key--------------------------------#
mkdir -p $HOME/.ssh
chmod 0700 $HOME/.ssh
ssh-keygen -t rsa -N ""
#---------------------------------install Iterm--------------------------------#
brew cask install iterm2
#----------------------------------install Zsh---------------------------------#
brew install zsh
#-------------------------------install Oh My Zsh------------------------------#
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv -f ./.zshrc $HOME/




#----------------------------------install Nvim--------------------------------#
brew install neovim

#----------------------------install Python with pyenv-------------------------#
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile
source $HOME/.zshrc
exec zsh
pyenv install-latest
#install pip?
#pip install modules?
