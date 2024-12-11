#!/usr/bin/env sh
pip3 install supervisor
mkdir -p ~/.local/supervisor
mkdir -p ~/.config/supervisor.d
sed "s,__home__,$HOME,g" supervisord.conf > ~/.config/supervisord.conf
echo "supervisord -c $HOME/.config/supervisord.conf" > ~/.rc.d/supervisor.sh
sh ~/.rc.d/supervisor.sh
echo 'alias mysupervisor="supervisorctl -c ~/.config/supervisord.conf"' > ~/.profile.d/mysupervisor.sh
ln -s $(pwd)/mysupervisor ~/.local/bin
