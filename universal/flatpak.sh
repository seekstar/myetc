#!/usr/bin/env sh
if [ "$(flatpak remotes | grep flathub)" != '' ]; then
	sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub
else
	sudo flatpak remote-add flathub https://mirror.sjtu.edu.cn/flathub/flathub.flatpakrepo
fi
