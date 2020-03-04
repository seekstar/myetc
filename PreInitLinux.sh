# Place this file in init dir

yes | sudo apt-get install git

bash extract_key.sh

cd ~/.ssh
chmod 600 id_rsa_git
#bash git_login.sh
eval "$(ssh-agent -s)"
ssh-add id_rsa_git
yes | ssh -T git@gitee.com

git config --global user.email "632863986@qq.com"
git config --global user.name "searchstar"

cd ~
mkdir git
cd git
git clone git@gitee.com:searchstar/tools.git

ln -s ~/git/tools/os/linux ~/linux

bash ~/linux/config/000pre/index.sh

