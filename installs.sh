

# rxvt-unicode

sudo apt install rxvt-unicode-256color fonts-inconsolata
cp vtwheel ~/.urxvt/ext/vtwheel
# exec --no-startup-id urxvtd -q -f -o


# python

sudo apt install python-pip
sudo pip install --upgrade pip
sudo pip install virtualenv pylama

# vim

sudo apt install vim-gtk
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# atom

sudo add-apt-repository ppa:webupd8team/atom
sudo apt update
sudo apt install atom
apm install minimap atom-material-ui atom-material-syntax go-plus git-blame linter-pylama teletype vim-mode-plus

# backlight

git clone https://github.com/haikarainen/light.git
sudo apt install -y help2man
cd light
make && make install
# bindsym XF86MonBrightnessUp exec light -A 5 # increase screen brightness
# bindsym XF86MonBrightnessDown exec light -U 5 # decrease screen brightness
#
# bindsym F10 exec --no-startup-id pactl set-sink-volume 1 +5% #increase sound volume
# bindsym F9 exec --no-startup-id pactl set-sink-volume 1 -5% #decrease sound volume
# bindsym F8 exec --no-startup-id pactl set-sink-mute 1 toggle # mute sound

# bindsym $mod+m bar mode toggle
# new_window pixel 1
