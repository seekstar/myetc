version=$(openssl version | awk '{print $2}' | sed 's/.$//g')
if [ $version == "1.1.1" ]; then
	echo Openssl is new enough.
	exit
fi
sudo mv /bin/openssl /bin/openssl_$(date +%Y%m%d%X).bak
sudo mv /usr/share/doc/openssl /usr/share/doc/openssl_$(date +%Y%m%d%X).bak
#mv /usr/local/openssl /usr/local/openssl.bak
#mv /usr/include/openssl /usr/include/openssl.bak
downdir=$(mktemp -d)
cd $downdir
wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz
tar -zxvf openssl-1.1.1g.tar.gz > /dev/null
cd openssl-1.1.1g
sudo mkdir -p /usr/local/openssl
./config --prefix=/usr/local/openssl shared zlib
make depend
hardware_concurrency=$(cat /proc/cpuinfo | grep 'process' | sort | uniq | wc -l)
make -j$hardware_concurrency && sudo make install
sudo ln -s /usr/local/openssl/bin/openssl /usr/bin/openssl
sudo ln -s /usr/local/openssl/include/openssl /usr/include/openssl
sudo bash -c 'echo "/usr/local/openssl/lib" > /etc/ld.so.conf.d/openssl.conf'
sudo ldconfig -v

