#zsh as default
chsh -s $(which zsh)

#oh my zsh
if ! [ -d /home/$(whoami)/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if ! [ -d $HOME/.vim/bundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
fi

#Vim/Nvim symlinks 
ln -s ~/.vim ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim  

#nvm
if [ -d $HOME/.nvm ]
then
  echo "NVM Already installed"
else
  if ! [ -e $HOME/.zshrc ] && ! [ -e $HOME/.bashrc ]; then
    touch $HOME/.bashrc
  fi
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
fi

#setting node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install v6.9.1
nvm use default

# install npm global modules
source ../nodejs/npm_dependencies.sh
