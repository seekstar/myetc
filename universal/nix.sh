#!/usr/bin/env sh
sh <(curl https://mirrors.tuna.tsinghua.edu.cn/nix/latest/install) --daemon --no-channel-add --yes
. /etc/profile

sudo bash -c "echo substituters = https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store https://cache.nixos.org/ >> /etc/nix/nix.conf"
sudo -i nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
sudo -i nix-channel --update
nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
nix-channel --update
sudo systemctl restart nix-daemon.service