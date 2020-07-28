mkdir ~/software
ln -s $(pwd)/software/set_env.sh ~/software/
ln -s $(pwd)/software//encrypt/encrypt.sh ~/software/
ln -s $(pwd)/software//encrypt/decipher.sh ~/software/

source ~/software/set_env.sh
bash sudoers.sh

sudo $APT install -y git

git remote remove origin
git remote add gitee git@gitee.com:searchstar/myetc.git

mkdir -p ~/.ssh
bash extract_key.sh

cd ~/.ssh
chmod 600 id_rsa_git
#bash git_login.sh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_git
yes | ssh -T git@gitee.com

cd ~
mkdir git
cd git
git clone git@gitee.com:searchstar/tools.git
cd tools
git remote rename origin gitee

ln -s ~/git/tools/os ~
ln -s ~/git/tools/os/linux ~

ln -s ~/linux/config/git_ssh_config.txt ~/.ssh/config
chmod 600 ~/.ssh/config

cd ~/git
bash ~/os/Init/git.sh

cd ~
mkdir log

echo Please do these things before proceeding:
echo 1. change the mirror

