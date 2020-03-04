username=$(whoami)
su
chmod 640 /etc/sudoers
echo "$username	ALL=(ALL:ALL) ALL" >> /etc/sudoers
chmod 440 /etc/sudoers
exit

