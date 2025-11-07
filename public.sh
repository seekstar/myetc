#!/usr/bin/env sh

chmod 700 ~
mkdir -p ~/.local/bin

./helper/git.sh

if [ ! -d ~/.profile.d ]; then
	mkdir ~/.profile.d
	cat >> ~/.profile <<EOF
prepend_path () {
	case ":\$PATH:" in
		*:"\$1":*)
			;;
        *)
            PATH="\$1\${PATH:+:\$PATH}"
    esac
}
for i in \$HOME/.profile.d/*.sh; do
	. \$i
done
unset -f prepend_path
EOF
fi

THISDIR=$(pwd)
cd config
cp -r profile.d/* ~/.profile.d/
cp rc ~/.rc
mkdir -p ~/.rc.d
mkdir -p ~/.config/systemd/user
cp systemd-user/rc.service ~/.config/systemd/user/
if systemctl --version 2> /dev/null; then
	systemctl --user daemon-reload
	systemctl --user enable --now rc.service
fi
cd vim
./deploy.sh
cd ../Templates
./deploy.sh
cd ../..

cd universal
./python.sh
. ~/.profile
cd supervisor
./deploy.sh
cd ..
./zsh.sh
cd ..

cat >> ~/.bashrc <<EOF
if [ \$VSCODE_SHELL_INTEGRATION ]; then
	. ~/.profile
fi
EOF

mkdir -p ~/software
ln -s $(pwd)/software/encrypt/encrypt.sh ~/software/
chmod +x ~/software/encrypt.sh
ln -s $(pwd)/software/encrypt/decipher.sh ~/software/
chmod +x ~/software/decipher.sh
