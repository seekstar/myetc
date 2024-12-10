#!/usr/bin/env sh

chmod 700 ~

# Since this repository has been cloned, git should have been installed.
git config --global user.email "jianshengqiu.cs@gmail.com"
git config --global user.name "Jiansheng Qiu"
git config --global pull.ff only

if [ ! -d ~/.profile.d ]; then
	mkdir ~/.profile.d
	cat >> ~/.profile <<EOF
append_path () {
	case ":\$PATH:" in
		*:"\$1":*)
			;;
        *)
            PATH="\${PATH:+\$PATH:}\$1"
    esac
}
for i in \$HOME/.profile.d/*.sh; do
	. \$i
done
unset -f append_path
EOF
fi

THISDIR=$(pwd)
cd config
cp -r profile.d/* ~/.profile.d/
cp rc ~/.rc
mkdir -p ~/.rc.d
mkdir -p ~/.config/systemd/user
cp systemd-user/rc.service ~/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable --now rc.service
cd vim
bash deploy.sh
cd ../Templates
bash deploy.sh
cd ../..

cd universal
bash python.sh
bash zsh.sh
cd ..

mkdir -p ~/software
ln -s $(pwd)/software/encrypt/encrypt.sh ~/software/
chmod +x ~/software/encrypt.sh
ln -s $(pwd)/software/encrypt/decipher.sh ~/software/
chmod +x ~/software/decipher.sh
