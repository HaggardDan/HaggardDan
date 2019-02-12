# rxvt-unicode

sudo apt install -y rxvt-unicode-256color fonts-inconsolata
cat Xresources >> ~/.Xdefaults
mkdir -p ~/.urxvt/ext
cp vtwheel ~/.urxvt/ext/vtwheel
# exec --no-startup-id urxvtd -q -f -o


# python

sudo apt install -y python-pip direnv
sudo pip install --upgrade pip virtualenv
echo "layout python" > ~/.envrc
echo "export DIRENV_LOG_FORMAT=\"\"" >> ~/.bashrc
echo "eval \"\$(direnv hook bash)\"" >> ~/.bashrc
direnv allow ~/.


# go
sudo add-apt-repository -y ppa:gophers/archive
sudo apt update
sudo apt install golang-1.10-go
sudo ln -s /usr/lib/go-1.10/bin/go /usr/bin/go
sudo ln -s /usr/lib/go-1.10/bin/gofmt /usr/bin/gofmt

# vim

sudo apt install -y vim-gtk
cp vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# atom

sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt update
sudo apt install atom
apm install minimap atom-material-ui atom-material-syntax go-plus git-blame linter-pylama teletype vim-mode-plus editorconfig atom-scale-factor
cp atom_config.cson ~/.atom/config.cson

# backlight

git clone https://github.com/haikarainen/light.git
sudo apt install -y help2man
cd light
make && sudo make install
cd ..
light -c -S 5

# system
sudo apt install -y feh xautolock pavucontrol
# this needs to be templated
sudo cp i3lock.service /etc/systemd/system/.
sudo systemctl enable i3lock.service

# automount stuff
sudo apt install -y udiskie

# VPN
sudo apt install -y network-manager-openconnect-gnome
mkdir ~/.config/i3/bin
cp toggle_vpn ~/.config/i3/bin/.

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt -y install spotify-client

# playerctl
curl -L https://github.com/acrisci/playerctl/releases/download/v0.6.0/playerctl-0.6.0_amd64.deb > ~/Downloads/playerctl-0.6.0_amd64.deb
sudo dpkg -i ~/Downloads/playerctl-0.6.0_amd64.deb

# umonitor
git clone https://github.com/rliou92/umonitor.git
sudo apt -y install libxrandr-dev libconfig-dev libxcb-randr0-dev
cd umonitor
make && sudo make install
cd ..
umonitor -s default

# slim
sudo apt -y install slim

# video
sudo apt -y install kazam kendlive vlc

# vscode
# in VMs this makes it move fast enough
# "vim.statusBarColorControl": false,

# i3pystatus
virtualenv -p python3 ~/.config/i3/venv
~/.config/i3/venv/bin/pip install i3pystatus netifaces colour
cp status.py ~/.config/i3/.
cp netmanagervpn.py ../i3/venv/lib/python3.6/site-packages/i3pystatus/.
# status_command ~/.config/i3/venv/bin/python ~/.config/i3/status.py
 
