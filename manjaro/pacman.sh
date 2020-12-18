sudo pacman-mirrors -i -c China -m rank
#sudo pacman -Syy

sudo bash -c "echo -e \"[archlinuxcn]\nSigLevel = Never\nServer = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\\\$arch\" >> /etc/pacman.conf"
sudo pacman -Syyu

sudo pacman -S yay vim
#yay --save --aururl aur.mirrors.ustc.edu.cn
#yay --save --aururl aur.tuna.tsinghua.edu.cn

