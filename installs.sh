# rxvt-unicode

sudo apt install -y rxvt-unicode-256color fonts-inconsolata
cat Xresources >> ~/.Xdefaults
mkdir -d ~/.urxvt/ext
cp vtwheel ~/.urxvt/ext/vtwheel
# exec --no-startup-id urxvtd -q -f -o


# python

sudo apt install python-pip direnv
sudo pip install --upgrade pip virtualenv
echo "layout python" > ~/.envrc
echo "export DIRENV_LOG_FORMAT=\"\"" >> ~/.bashrc
echo "eval \"\$(direnv hook bash)\"" >> ~/.bashrc
direnv allow ~/.

# vim

sudo apt install -y vim-gtk
cp vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# atom

sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt update
sudo apt install atom
apm install minimap atom-material-ui atom-material-syntax go-plus git-blame linter-pylama teletype vim-mode-plus editorconfig
cp atom_config.cson ~/.atom/config.cson

# backlight

git clone https://github.com/haikarainen/light.git
sudo apt install -y help2man
cd light
make && sudo make install
cd ..

# system
sudo apt install -y feh xautolock
# this needs to be templated
sudo cp i3lock.service /etc/systemd/system/.
sudo systemctl enable i3lock.service

