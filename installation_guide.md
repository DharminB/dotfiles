# Installation Guide

### install i3

```
ln -s ~/dotfiles/config/i3/config ~/.config/i3/config
ln -s ~/dotfiles/config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
sudo apt install i3

sudo apt install ranger
ln -s ~/dotfiles/config/ranger ~/.config/ranger
sudo apt install i3blocks
sudo apt install rxvt-unicode-256color
sudo apt install dmenu
sudo apt install rofi
sudo apt install i3lock
sudo apt install pulseaudio-utils

echo "/home/dharmin" > ~/.lastdir
echo "1.0" > ~/.config/brightness
```

### install alacritty

[instructions](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#prerequisites)

### install playerctl
```
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/libplayerctl2_2.0.1-1_amd64.deb
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/playerctl_2.0.1-1_amd64.deb
sudo dpkg -i libplayerctl2_2.0.1-1_amd64.deb playerctl_2.0.1-1_amd64.deb

sudo apt install libxrandr2
sudo apt install scrot

ln -s ~/dotfiles/Xdefaults ~/.Xdefaults
ln -s ~/dotfiles/config/i3/config ~/.config/i3/config

sudo apt install jq
sudo apt install feh
sudo apt install imagemagick
```

### install brave browser

[instructions](https://brave.com/linux/#release-channel-installation)

### install and use zsh (logout and login for zsh to work)
```
sudo apt install zsh
chsh -s /usr/bin/zsh
```
```
sudo apt install neofetch
ln -s ~/dotfiles/config/neofetch ~/.config/
ln -s ~/dotfiles/urxvt ~/.urxvt
```

### setup vim
```
sudo apt install neovim
ln -s ~/dotfiles/nvim ~/.config
vim
:PlugInstall
:qa
```

### brightness

- install light from github
- build and install

```
sudo chmod +s /usr/bin/light
```

### screen tear and transparency

```
sudo apt install compton
```
log out and log back in

### Change wallpapers using cron

execute `crontab -e`
Add this at the last line

```
*/5 * * * * /bin/bash /home/dharmin/dotfiles/scripts/change_wallpaper.sh cronjob >/tmp/wallpaper_cronjob.log 2>&1
```

### Additional software

```
sudo apt install mpv
sudo apt install thunderbird
sudo snap install spotify
sudo snap install skype
sudo apt install zathura
sudo apt install simplescreenrecorder
sudo apt install wireguard-tools
sudo apt install resolvconf
sudo apt install tmux
sudo apt install htop
sudo apt install tree
sudo apt install gimp
sudo apt install libreoffice
sudo apt install w3m
sudo apt install python-pip
sudo apt install nmap
sudo apt install xclip
sudo apt install python-rosdep
sudo apt install texlive-full
sudo apt install latexmk
```

### Pass

- Either copy/paste the entire `.gnupg` dir into the new computer (recommended)
  or export the private key from old machine, copy that into new machine and
  import it there.
  - list keys
    ```
    gpg --list-secret-keys --keyid-format LONG
    ```
  - export one key
    ```
    gpg --export-secret-keys -a [KEY_ID] > gpg-secret.asc
    ```
  - import key
    ```
    gpg --import gpg-secret.asc
    ```
  - trust key
    ```
    gpg --edit-key [KEY_ID]
    gpg> trust
    Your decision? 5
    gpg> quit
    ```

- install `pass` (`sudo apt install pass`)
- Clone `password-store` as `.password-store` dir
