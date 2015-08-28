#this file automates more or less the installation of the rest
#tested on Debian\GNU/Linux
dotfiles=dotfiles

function sudoactions()
{
    sudo mkdir -p /etc/colors/
    sudo cp colors.sh /etc/colors/
    sudo cp bashroot /root/.bashrc
}

function makedir()
{
    mkdir -p $HOME/.config/colors/
}


function copyfiles()
{
 cp $dotfiles/.vimrc ~/
 cp $dotfiles/.xinitrc
 cp $dotfiles/.Xresources ~/
 cp $dotfiles/colors.sh $HOME/.config/colors/
 cp -r $dotfiles/.vim ~/
 cp -r $dotfiles/.fonts ~/
}

