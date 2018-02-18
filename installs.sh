
sudo apt install git vim

# python

sudo apt install python-pip
sudo pip install --upgrade pip
sudo pip install virtualenv pylama

# atom

sudo add-apt-repository ppa:webupd8team/atom
sudo apt update
sudo apt install atom
apm install minimap atom-material-ui atom-material-syntax go-plus git-blame linter-pylama

# backlight

git clone https://github.com/haikarainen/light.git
sudo apt install -y help2man
cd light
make && make install
# bindsym XF86MonBrightnessUp exec light -A 5 # increase screen brightness
# bindsym XF86MonBrightnessDown exec light -U 5 # decrease screen brightness

