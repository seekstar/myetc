mkdir -p ~/.pip
mv ~/.pip/pip.conf ~/.pip/pip.conf_$(date +%Y%m%d%X).bak &> /dev/null
cp pip.conf ~/.pip/
echo alias tp=\'trash-put\' >> $HOME/.bashrc
