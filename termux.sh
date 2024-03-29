apt install openssh
# sshd. Then will listen to 8022
mkdir .ssh
chmod 700 .ssh
cd .ssh
touch authorized_keys
chmod 600 authorized_keys

apt install vim

bash public.sh

cd software/small_tools
bash deploy.sh

#https://blog.csdn.net/YiBYiH/article/details/127294017
pkg install termux-services
# Restart termux to take effect

mkdir -p $PREFIX/var/service/ssh-c
cat > $PREFIX/var/service/ssh-c/run <<EOF
#!/data/data/com.termux/files/usr/bin/sh
ssh -NR 6004:localhost:8022 portuser@c.seekstar.top -p 6005
EOF
chmod +x $PREFIX/var/service/ssh-c/run
