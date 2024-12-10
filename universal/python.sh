python3 -m venv ~/.venvs/base
echo ". ~/.venvs/base/bin/activate" >> ~/.profile.d/python.sh
source ~/.venvs/base/bin/activate

# UpgradePrompt will print horrible traceback on NixOS
pip3 config set global.disable-pip-version-check true
