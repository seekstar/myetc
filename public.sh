# Since this repository has been cloned, git should have been installed.
git config --global user.email "jianshengqiu.cs@gmail.com"
git config --global user.name "Jiansheng QIU"

THISDIR=$(pwd)
cd software/vim
bash deploy.sh
cd ../python
bash deploy.sh
cd ../small_tools
bash deploy.sh
cd ../..

cd config/Templates
bash deploy.sh
cd ../..

mkdir -p ~/software
ln -s $(pwd)/software/encrypt/encrypt.sh ~/software/
chmod +x ~/software/encrypt.sh
ln -s $(pwd)/software/encrypt/decipher.sh ~/software/
chmod +x ~/software/decipher.sh

git remote remove origin
git remote add gitee git@gitee.com:searchstar/myetc.git

