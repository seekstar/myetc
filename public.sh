# Since this repository has been cloned, git should have been installed.
git config --global user.email "jianshengqiu.cs@gmail.com"
git config --global user.name "Jiansheng Qiu"

if [ ! -d ~/.profile.d ]; then
	mkdir ~/.profile.d
	cat config/profiles.txt >> ~/.profile
fi

THISDIR=$(pwd)
cd config
cp -r profile.d/* ~/.profile.d/
cd vim
bash deploy.sh
cd ../Templates
bash deploy.sh
cd ../..

mkdir -p ~/software
ln -s $(pwd)/software/encrypt/encrypt.sh ~/software/
chmod +x ~/software/encrypt.sh
ln -s $(pwd)/software/encrypt/decipher.sh ~/software/
chmod +x ~/software/decipher.sh
