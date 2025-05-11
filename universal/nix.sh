#!/usr/bin/env sh
tmp=$(mktemp)
curl https://mirrors.tuna.tsinghua.edu.cn/nix/latest/install > $tmp
sh $tmp --daemon --no-channel-add --yes
rm $tmp
. /etc/profile

sudo bash -c "echo substituters = https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store https://cache.nixos.org/ >> /etc/nix/nix.conf"
sudo -i nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
sudo -i nix-channel --update
nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
nix-channel --update
sudo systemctl restart nix-daemon.service

echo 'export XDG_DATA_DIRS="$HOME/.nix-profile/share:$XDG_DATA_DIRS"' > ~/.profile.d/nix.sh
