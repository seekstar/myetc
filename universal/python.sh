#!/usr/bin/env sh
python3 -m venv ~/.venvs/base
if [ ! -f ~/.profile.d/python.sh ]; then
	echo ". ~/.venvs/base/bin/activate" > ~/.profile.d/python.sh
fi
. ~/.venvs/base/bin/activate

# UpgradePrompt will print horrible traceback on NixOS
pip3 config set global.disable-pip-version-check true

if ! command -v trash-put; then
	pip3 install trash-cli
fi
