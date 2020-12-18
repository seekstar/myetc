THISDIR=$(pwd)
cd software/vim
bash deploy.sh

git config --global user.email "632863986@qq.com"
git config --global user.name "Jiansheng QIU"

mkdir -p ~/SmallTools
cd $THISDIR/software/small_tools
make
echo -e "alias jmake='make -j\$($HOME/SmallTools/hardware_concurrency)'" >> $HOME/.bashrc

