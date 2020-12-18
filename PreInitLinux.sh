bash public.sh

mkdir -p ~/software
ln -s $(pwd)/software/set_env.sh ~/software/
ln -s $(pwd)/software//encrypt/encrypt.sh ~/software/
chmod +x ~/software/encrypt.sh
ln -s $(pwd)/software//encrypt/decipher.sh ~/software/
chmod +x ~/software/decipher.sh

chmod +x openssl.sh
./openssl.sh

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
mkdir -p git
cd git
git clone git@gitee.com:searchstar/tools.git
cd tools
git remote rename origin gitee

ln -s ~/git/tools/os ~
ln -s ~/git/tools/os/linux ~

cp ~/linux/config/git_ssh_config.txt ~/.ssh/config
chmod 600 ~/.ssh/config

cd ~/git
bash ~/os/Init/git.sh

cd ~
mkdir log

echo Please do these things before proceeding:
echo 1. change the mirror

