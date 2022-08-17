nix-generate-config --root /mnt
cp config/configuration.nix config/desktop-environment.nix /mnt/etc/nixos/
nixos-install --option substituters https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store
