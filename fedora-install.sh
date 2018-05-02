

# vim
sudo dnf install -y vim vim-X11
echo "alias vim=\"vimx\"" >> ~/.bashrc
echo "alias vi=\"vimx\"" >> ~/.bashrc
cp vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


# atom
sudo dnf install -y $(curl -sL "https://api.github.com/repos/atom/atom/releases/latest" | grep "https.*atom.x86_64.rpm" | cut -d '"' -f 4)
apm install minimap atom-material-ui atom-material-syntax go-plus git-blame linter-pylama teletype vim-mode-plus editorconfig atom-scale-factor


# direnv
sudo dnf install -y direnv
sudo pip install --upgrade pip virtualenv
echo "layout python" > ~/.envrc
echo "export DIRENV_LOG_FORMAT=\"\"" >> ~/.bashrc
echo "eval \"\$(direnv hook bash)\"" >> ~/.bashrc
direnv allow ~/.
