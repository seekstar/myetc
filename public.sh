# Since this repository has been cloned, git should have been installed.
git config --global user.email "632863986@qq.com"
git config --global user.name "Jiansheng QIU"

THISDIR=$(pwd)
cd software/vim
bash deploy.sh
cd ../python
bash deploy.sh
cd ../small_tools
bash deploy.sh
cd ../..

if [ -d ~/模板 ]; then
	mv ~/模板 ~/Templates
else
	mkdir -p ~/Templates
fi
cd config/Templates
ln -s $(pwd)/cpp.cpp ~/Templates/
ln -s $(pwd)/c.c ~/Templates/
ln -s $(pwd)/launcher.desktop ~/Templates/

