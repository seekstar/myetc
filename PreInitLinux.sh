yes | sudo apt-get install git

git remote rename origin gitee

bash extract_key.sh

cd ~/.ssh
chmod 600 id_rsa_git
#bash git_login.sh
eval "$(ssh-agent -s)"
ssh-add id_rsa_git
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

cd ~/git
bash ~/os/Init/git.sh

bash ~/linux/config/000pre/index.sh

