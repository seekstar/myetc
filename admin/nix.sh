# https://seekstar.github.io/2023/02/04/使用国内源安装和使用nix包管理器/

# https://mirrors.tuna.tsinghua.edu.cn/help/nix/
sh <(curl https://mirrors.tuna.tsinghua.edu.cn/nix/latest/install) --daemon --no-channel-add
source /etc/profile

# https://mirrors.tuna.tsinghua.edu.cn/help/nix/
sudo bash -c "echo substituters = https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store https://cache.nixos.org/ >> /etc/nix/nix.conf"
sudo -i nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
sudo -i nix-channel --update
nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
nix-channel --update
sudo systemctl restart nix-daemon.service