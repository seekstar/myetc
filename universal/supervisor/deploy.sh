#!/usr/bin/env sh
if ! command -v supervisorctl > /dev/null 2>&1; then
	pip3 install supervisor
fi
mkdir -p ~/.local/supervisor/log
mkdir -p ~/.config/supervisor.d
sed "s,__home__,$HOME,g" supervisord.conf > ~/.config/supervisord.conf
echo "supervisord -c $HOME/.config/supervisord.conf" > ~/.rc.d/supervisor.sh
sh ~/.rc.d/supervisor.sh
ln -s $(pwd)/mysupervisor ~/.local/bin/
