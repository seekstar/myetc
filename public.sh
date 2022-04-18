# Since this repository has been cloned, git should have been installed.
git config --global user.email "jianshengqiu.cs@gmail.com"
git config --global user.name "Jiansheng Qiu"

if [ ! -d ~/.profile.d ]; then
	mkdir ~/.profile.d
	cat config/profiles.txt >> ~/.profile
fi

echo 'export EDITOR=vim' > ~/.profile.d/editor-vim.sh
echo "alias using=\"ps -e -o uid --no-headers | awk '\\\$1 >= 1000' | sort -u | xargs -i id -nu {}\"" > ~/.profile.d/using.sh

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
