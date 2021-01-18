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

cd config/Templates
bash deploy.sh

