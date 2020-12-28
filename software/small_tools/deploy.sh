mkdir -p ~/SmallTools
make
echo -e "alias jmake='make -j\$($HOME/SmallTools/hardware_concurrency)'" >> $HOME/.bashrc

