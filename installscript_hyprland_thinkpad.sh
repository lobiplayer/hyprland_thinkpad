#! /bin/bash

# dnf update
sudo dnf update -y

sudo systemctl set-default graphical.target

# Install ly display mamanger
sudo dnf install greetd -y

# TODO !!! COPY the /etc/greetd/config.toml !!!

# Install Hyprland
dnf copr enable solopasha/hyprland -y
sudo dnf install hyprland -y

# Install Git
sudo dnf install git -y

# Install pip
sudo dnf install pip -y

# Install Kitty
sudo dnf install kitty -y

# Install lf (better than ranger)
sudo dnf copr enable pennbauman/ports -y
sudo dnf install lf -y
sudo chmod +x ~/.config/lf/lf_kitty_{clean,preview}


# Install PyWal and run theme
sudo pip3 install pywal
wal --theme base16-unikitty

# Install Nerd font
sudo dnf install jetbrains-mono-nl-fonts -y
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
fc-cache -f -v

##################### NEOVIM ##################
# Install neovim (ripgrep needed for telescope plugin)
sudo dnf install neovim python3-neovim -y
sudo dnf install ripgrep

# Set neovim als default editor for user
if grep -q "export EDITOR=nvim" "/home/rmohan/.bash_profile"; then 
    echo "Exists" 
else 
    echo "Does not exist"
    echo export EDITOR="nvim" >>  ~/.bash_profile
fi


################### FISH #############################

# Install Fish
sudo dnf install fish -y
sudo dnf install util-linux-user -y
sudo chsh -s /usr/bin/fish
sudo chsh -s /usr/bin/fish rmohan

# Install and run OhMyFish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Intall fzf
sudo dnf install d-find -y
sudo dnf install fzf -y
sudo dnf install bat -y
omf install PatrickF1/fzf.fish

# Install autopair
omf install jorgebucaran/autopair.fish

# Install fish-ssh-agent
omf install danhper/fish-ssh-agent

##################### Make Configlinks to ~/.config #####################

# Make ~/.config links
sh ./configlinks.sh
