mkdir -p ~/.ssh
chmod 700 ~/.ssh
bash extract_key.sh

cd ~/.ssh
chmod 600 id_rsa_git
#bash git_login.sh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_git
yes | ssh -T git@gitee.com

cd ~
mkdir -p git
cd git
git clone git@gitee.com:searchstar/tools.git
cd tools
git remote rename origin gitee

ln -s ~/git/tools/os ~
ln -s ~/git/tools/os/linux ~

cp ~/linux/config/ssh_config.txt ~/.ssh/config
chmod 600 ~/.ssh/config

cd ~/git
bash ~/os/Init/git.sh

cd ~
mkdir log