python3 -m venv ~/.venvs/base
echo "source ~/.venvs/base/bin/activate" >> ~/.profile.d/python.sh
source ~/.venvs/base/bin/activate

# UpgradePrompt will print horrible traceback on NixOS
pip3 config set global.disable-pip-version-check true

pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
