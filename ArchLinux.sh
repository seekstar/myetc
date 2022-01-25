sudo reflector --country China --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -S wget
bash pacman.sh
bash PreInitLinux.sh
