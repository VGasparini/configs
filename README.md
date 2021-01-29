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

`cp ./i3/config .config/regolith/i3/config`

## Install my i3xrocks and blocks

```sh
cp i3xrocks/config ~/.config/regolith/i3xrocks/config       
cp i3xrocks/Xresources-i3xrocks ~/.Xresources-i3xrocks      
sudo cp i3xrocks/Xresources-regolith ~/.Xresources-regolith   
sudo cp -R i3xrocks/i3xrocks /usr/share/i3xrocks
sudo chmod -R 777 /usr/share/i3xrocks
cp -R i3xrocks/scripts ~/.config/i3blocks/scripts
sudo chmod -R 777 ~/.config/i3blocks/scripts
```
