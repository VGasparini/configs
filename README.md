# Personal Configs

Clone this repo and just copy-paste the commands

# Zsh + Oh My Zsh

## Install [Oh My Zsh](https://ohmyz.sh)
```sh
sudo apt-get install zsh
sudo apt-get install git-core
```

```sh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh; zhsh -s `which zsh`
```
Then, reboot

## Install my theme

`cp ./zsh/gasparini.zsh-theme ~/.oh-my-zsh/themes/gasparini.zsh-theme`

Open `~/.zshrc` and replace `ZSH_THEME=robbyrussell` with
```sh
ZSH_THEME="gasparini"
```
Save the file and execute `source ~/.zshrc` or `exec $SHELL`.

## Install my configs

`cp ./zsh/.zshrc ~/.zshrc`
And execute `source ~/.zshrc` or `exec $SHELL`.

# i3

## Install i3

Don't know. I use [Regolith](https://regolith-linux.org/). It comes with i3 already installed.

## Install my configs

`cp ./i3/config /etc/i3/config`

# Polybar

## Install [Polybar](https://github.com/polybar)

```sh
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 -y

git clone https://github.com/jaagr/polybar.git 
cd polybar
sudo ./build.sh
```

## Install a templated theme

```sh
sudo chown -R $USER:$USER ~/.config/polybar && wget https://gitlab.com/terminalroot/popy/raw/master/launch.sh -O ~/.config/polybar/launch.sh && chmod +x ~/.config/polybar/launch.sh && echo -e 'for_window [class="^.*"] border pixel 0\ngaps inner 10\ngaps outer 2\nexec_always --no-startup-id $HOME/.config/polybar/launch.sh' >> ~/.config/i3/config
``

## Install my theme

TODD