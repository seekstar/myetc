#!/usr/bin/env sh
mkdir -p ~/git
cd ~/git
while [ ! -d init ]; do
	git clone https://gitee.com/searchstar/init.git
done
cd - > /dev/null

mkdir -p ~/.ssh
chmod 700 ~/.ssh
bash helper/extract_key.sh ~/git/init/id_rsa.aes256

git remote remove origin
git remote add origin git@gitee.com:searchstar/myetc.git
git pull origin master --set-upstream

cd ~/git
git clone git@gitee.com:searchstar/server.git
git clone git@gitee.com:searchstar/tools.git
