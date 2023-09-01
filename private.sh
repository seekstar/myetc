mkdir -p ~/git
cd ~/git
git clone https://gitee.com/searchstar/init.git
cd - > /dev/null

mkdir -p ~/.ssh
chmod 700 ~/.ssh
bash helper/extract_key.sh ~/git/init/id_rsa.aes256

git remote remove origin
git remote add origin git@gitee.com:searchstar/myetc.git

cd ~/git
git clone git@gitee.com:searchstar/tools.git
