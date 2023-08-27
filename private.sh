mkdir -p ~/git
cd ~/git
git clone https://gitee.com/searchstar/init.git
cd - > /dev/null

mkdir -p ~/.ssh
chmod 700 ~/.ssh
bash helper/extract_key.sh ~/git/init/id_rsa_git.aes256

git remote remove origin
git remote add gitee git@gitee.com:searchstar/myetc.git


cd ~/.ssh
chmod 600 id_rsa_git
#bash git_login.sh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_git
yes | ssh -T git@gitee.com

cd ~/git
git clone git@gitee.com:searchstar/tools.git
cd tools
git remote rename origin gitee

ln -s ~/git/tools/os ~
ln -s ~/git/tools/os/linux ~

cp ~/linux/config/ssh_config.txt ~/.ssh/config
chmod 600 ~/.ssh/config

cd ~/git
bash ~/os/Init/git.sh

#cd ~
#mkdir log