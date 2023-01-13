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
