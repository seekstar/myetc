mkdir -p ~/SmallTools
make
echo -e "alias jmake='make -j\$(nproc)'" > $HOME/.profile.d/jmake.sh

