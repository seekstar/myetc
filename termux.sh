bash public.sh
cd software/small_tools
bash deploy.sh
apt install vim

apt install openssh
# sshd. Then will listen to 8022
mkdir .ssh
chmod 700 .ssh
cd .ssh
touch authorized_keys
chmod 600 authorized_keys

#https://blog.csdn.net/YiBYiH/article/details/127294017
pkg install termux-services
# Restart termux to take effect

mkdir -p $PREFIX/var/service/nuc-ssh
cat > $PREFIX/var/service/nuc-ssh/run <<EOF
#!/data/data/com.termux/files/usr/bin/sh
ssh -NR 6004:localhost:8022 portuser@nuc.seekstar.top -p 8789
EOF

